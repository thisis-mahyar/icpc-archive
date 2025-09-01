package com.mahyar.icpctehran.daos;

import com.mahyar.icpctehran.models.Problem;
import com.mahyar.icpctehran.models.Sample;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class SampleDAO {
    DataSource dataSource;

    public SampleDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<Sample> findByProblem(Problem problem) throws SQLException {
        List<Sample> samples = new ArrayList<>();
        String query = "SELECT * FROM samples WHERE problem_id = ? ORDER BY number";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)
        ) {

            preparedStatement.setInt(1, problem.getId());

            try (
                    ResultSet resultSet = preparedStatement.executeQuery()
            ) {

                while (resultSet.next()) {
                    int number = resultSet.getInt("number");
                    String input = resultSet.getString("input");
                    String output = resultSet.getString("output");
                    String note = resultSet.getString("note");

                    Sample sample = new Sample(problem, number, input, output, note);

                    samples.add(sample);
                }
            }
        }

        return samples;
    }
}
