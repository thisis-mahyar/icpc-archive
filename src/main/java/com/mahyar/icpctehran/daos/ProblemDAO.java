package com.mahyar.icpctehran.daos;

import com.mahyar.icpctehran.models.Contest;
import com.mahyar.icpctehran.models.Problem;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProblemDAO {
    DataSource dataSource;
    ContestDAO contestDAO;

    public ProblemDAO(DataSource dataSource) {
        this.dataSource = dataSource;
        this.contestDAO = new ContestDAO(dataSource);
    }

    public List<Problem> findByContest(Contest contest) throws SQLException {
        List<Problem> problems = new ArrayList<>();
        String query = "SELECT * FROM problems WHERE contest_id = ? ORDER BY label";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)
        ) {

            preparedStatement.setInt(1, contest.getId());

            try (
                    ResultSet resultSet = preparedStatement.executeQuery()
            ) {

                while (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    char label = resultSet.getString("label").charAt(0);
                    String title = resultSet.getString("title");
                    String description = resultSet.getString("description");
                    String input = resultSet.getString("input");
                    String output = resultSet.getString("output");

                    Problem problem = new Problem(id, label, title, 1000, 256, description, input, output, contest);

                    problems.add(problem);
                }
            }
        }

        return problems;
    }


    public Problem findById(int id) throws SQLException {
        String query = "SELECT * FROM problems WHERE id = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)
        ) {

            preparedStatement.setInt(1, id);

            try (
                    ResultSet resultSet = preparedStatement.executeQuery()
            ) {
                if (resultSet.next()) {
                    char label = resultSet.getString("label").charAt(0);
                    String title = resultSet.getString("title");
                    int timeLimit = Integer.parseInt(resultSet.getString("time_limit"));
                    int memoryLimit = Integer.parseInt(resultSet.getString("memory_limit"));
                    String description = resultSet.getString("description");
                    String input = resultSet.getString("input");
                    String output = resultSet.getString("output");
                    Contest contest = contestDAO.findById(resultSet.getInt("contest_id"));

                    return new Problem(id, label, title, timeLimit, memoryLimit, description, input, output, contest);
                }
            }
        }

        return null;
    }

    public void save(Problem problem) throws SQLException {
        String query = "INSERT INTO problems (label, title, description, input, output, contest_id) VALUES (?, ?, ?, ?, ?, ?)";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query);
        ) {
            preparedStatement.setString(1, problem.getLabel().toString());
            preparedStatement.setString(2, problem.getTitle());
            preparedStatement.setString(3, problem.getDescription());
            preparedStatement.setString(4, problem.getInput());
            preparedStatement.setString(5, problem.getOutput());
            preparedStatement.setInt(6, problem.getContest().getId());

            preparedStatement.executeUpdate();
        }
    }

    public void update(Problem problem) throws SQLException {
        String query = "UPDATE problems SET label = ?, title = ?, description = ?, input = ?, output = ?, contest_id = ? WHERE id = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query);
        ) {
            preparedStatement.setString(1, problem.getLabel().toString());
            preparedStatement.setString(2, problem.getTitle());
            preparedStatement.setString(3, problem.getDescription());
            preparedStatement.setString(4, problem.getInput());
            preparedStatement.setString(5, problem.getOutput());
            preparedStatement.setInt(6, problem.getContest().getId());
            preparedStatement.setInt(7, problem.getId());

            preparedStatement.executeUpdate();
        }
    }

    public void delete(int id) throws SQLException {
        String query = "DELETE FROM problems WHERE id = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query);
        ) {
            preparedStatement.setInt(1, id);

            preparedStatement.executeUpdate();
        }
    }
}
