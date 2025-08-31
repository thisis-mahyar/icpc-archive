package com.mahyar.icpctehran.daos;

import com.mahyar.icpctehran.models.Contest;

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
                int questionNo = resultSet.getInt("question_no");

                Contest contest = new Contest(id, year, questionNo);

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
                    int questionNo = resultSet.getInt("question_no");

                    return new Contest(id, year, questionNo);
                }
            }
        }

        return null;
    }
}
