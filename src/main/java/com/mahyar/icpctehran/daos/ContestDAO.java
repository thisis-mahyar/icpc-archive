package com.mahyar.icpctehran.daos;

import com.mahyar.icpctehran.models.Contest;
import com.mahyar.icpctehran.models.Problem;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ContestDAO {
    DataSource dataSource;

    public ContestDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<Contest> findAll() throws SQLException {
        List<Contest> contests = new ArrayList<>();
        String query = "SELECT * FROM contests ORDER BY year DESC";

        try (
                Connection connection = dataSource.getConnection();
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(query);
        ) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                int year = resultSet.getInt("year");

                Contest contest = new Contest(id, year);

                contests.add(contest);
            }
        }

        return contests;
    }

    public Contest findById(int id) throws SQLException {
        String query = "SELECT * FROM contests WHERE id = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)
        ) {

            preparedStatement.setInt(1, id);

            try (
                    ResultSet resultSet = preparedStatement.executeQuery()
            ) {
                if (resultSet.next()) {
                    int year = resultSet.getInt("year");

                    return new Contest(id, year);
                }
            }
        }

        return null;
    }

    public List<Problem> findAllProblemsByContestId(int id) throws SQLException {
        List<Problem> problems = new ArrayList<>();
        String query = "SELECT * FROM problems WHERE contest_id = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)
        ) {

            preparedStatement.setInt(1, id);

            System.out.println(preparedStatement);

            try (
                    ResultSet resultSet = preparedStatement.executeQuery(query);
            ) {

                while (resultSet.next()) {
                    int problemId = resultSet.getInt("id");
                    char label = resultSet.getString("label").charAt(0);
                    String title = resultSet.getString("title");
                    String description = resultSet.getString("description");
                    String input = resultSet.getString("input");
                    String output = resultSet.getString("output");

                    Problem problem = new Problem(problemId, label, title, 1000, 256, description, input, output, new Contest(1, 1));

                    System.out.println(problem);

                    problems.add(problem);
                }
            }
        }

        return problems;
    }
}
