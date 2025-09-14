package com.mahyar.icpctehran.daos;

import com.mahyar.icpctehran.models.Problem;
import com.mahyar.icpctehran.models.Submission;
import com.mahyar.icpctehran.models.User;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class SubmissionDAO {
    DataSource dataSource;
    UserDAO userDAO;
    ProblemDAO problemDAO;

    public SubmissionDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<Submission> findAll() throws SQLException {
        List<Submission> submissions = new ArrayList<Submission>();
        String query = "SELECT * FROM submissions";

        try (
                Connection connection = dataSource.getConnection();
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(query);
        ) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String token = resultSet.getString("token");
                String language = resultSet.getString("language");
                String submissionTime = resultSet.getString("submission_time");
                User user = userDAO.findById(resultSet.getInt("user_id"));
                Problem problem = problemDAO.findById(resultSet.getInt("problem_id"));

                Submission submission = new Submission(id, token, language, submissionTime, user, problem);

                submissions.add(submission);
            }
        }

        return submissions;
    }

    public void save(Submission submission) throws SQLException {
        String query = "INSERT INTO submissions (token, language, user_id, problem_id) VALUES (?, ?, ?, ?)";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query);
        ) {
            preparedStatement.setString(1, submission.getToken());
            preparedStatement.setString(2, submission.getLanguage());
            preparedStatement.setInt(3, submission.getUser().getId());
            preparedStatement.setInt(4, submission.getProblem().getId());

            preparedStatement.executeUpdate();
        }
    }
}
