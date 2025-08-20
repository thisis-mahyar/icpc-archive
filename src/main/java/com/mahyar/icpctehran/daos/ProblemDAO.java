package com.mahyar.icpctehran.daos;

import com.mahyar.icpctehran.models.Problem;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ProblemDAO {
    DataSource dataSource;

    public ProblemDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<Problem> findAll() throws SQLException {
        List<Problem> problems = new ArrayList<>();
        String query = "SELECT * FROM problems";

        try (
                Connection connection = dataSource.getConnection();
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(query);
        ) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                char label = resultSet.getString("label").charAt(0);
                String title = resultSet.getString("title");
                String description = resultSet.getString("description");
                String input = resultSet.getString("input");
                String output = resultSet.getString("output");
                int contestId = resultSet.getInt("contest_id");

//                Problem problem = new Problem(id, label, title, description, input, output, contestId);
//
//                problems.add(problem);
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
                    String description = resultSet.getString("description");
                    String input = resultSet.getString("input");
                    String output = resultSet.getString("output");
                    int contestId = resultSet.getInt("contest_id");

//                    Problem problem = new Problem(id, label, title, description, input, output, contestId);
//
//                    return problem;
                }
            }
        }

        return null;
    }
}
