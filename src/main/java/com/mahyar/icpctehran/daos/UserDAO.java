package com.mahyar.icpctehran.daos;

import com.mahyar.icpctehran.models.User;

import javax.sql.DataSource;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {
    DataSource dataSource;

    public UserDAO(DataSource dataSource) {
        this.dataSource = dataSource;
    }

    public List<User> findAll() throws SQLException {
        List<User> users = new ArrayList<>();
        String query = "SELECT * FROM users WHERE username != 'admin'";

        try (
                Connection connection = dataSource.getConnection();
                Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(query);
        ) {
            while (resultSet.next()) {
                int id = resultSet.getInt("id");
                String username = resultSet.getString("username");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");

                User user = new User(id, username, email, password);
                users.add(user);
            }
        }

        return users;
    }

    public User findById(int id) throws SQLException {
        String query = "SELECT * FROM users WHERE id = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)
        ) {

            preparedStatement.setInt(1, id);

            try (
                    ResultSet resultSet = preparedStatement.executeQuery()
            ) {
                if (resultSet.next()) {
                    String username = resultSet.getString("username");
                    String email = resultSet.getString("email");
                    String password = resultSet.getString("password");

                    return new User(id, username, email, password);
                }
            }
        }

        return null;
    }

    public User findByUsername(String username) throws SQLException {
        String query = "SELECT * FROM users WHERE username = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query)
        ) {

            preparedStatement.setString(1, username);

            try (
                    ResultSet resultSet = preparedStatement.executeQuery()
            ) {
                if (resultSet.next()) {
                    int id = resultSet.getInt("id");
                    String email = resultSet.getString("email");
                    String passwordHash = resultSet.getString("password");

                    User user = new User(id, username, email, passwordHash);

                    return user;
                }
            }
        }

        return null;
    }

    public void save(User user) throws SQLException {
        String query = "INSERT INTO users (username, email, password) VALUES (?, ?, ?)";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query);
        ) {
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());

            preparedStatement.executeUpdate();
        }
    }

    public void update(User user) throws SQLException {
        String query = "UPDATE users SET username = ?, email = ?, password = ? WHERE id = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query);
        ) {
            preparedStatement.setString(1, user.getUsername());
            preparedStatement.setString(2, user.getEmail());
            preparedStatement.setString(3, user.getPassword());
            preparedStatement.setInt(4, user.getId());

            preparedStatement.executeUpdate();
        }
    }

    public void delete(int id) throws SQLException {
        String query = "DELETE FROM users WHERE id = ?";

        try (
                Connection connection = dataSource.getConnection();
                PreparedStatement preparedStatement = connection.prepareStatement(query);
        ) {
            preparedStatement.setInt(1, id);

            preparedStatement.executeUpdate();
        }
    }
}
