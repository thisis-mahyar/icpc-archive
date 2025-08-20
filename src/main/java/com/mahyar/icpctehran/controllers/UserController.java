package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.UserDAO;
import com.mahyar.icpctehran.models.User;
import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.SQLException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@WebServlet("/user")
public class UserController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO(dataSource);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String command = req.getParameter("command");

        switch (command) {
            case "sign-up":
                signUp(req, resp);
                break;
            case "sign-in":
                try {
                    signIn(req, resp);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
                break;
        }
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String command = req.getParameter("command");

        switch (command) {
            case "sign-out":
                signOut(req, resp);
                break;
        }
    }

    private void signOut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        session.invalidate(); // no session.setAttribute("user", null);

        RequestDispatcher dispatcher = req.getRequestDispatcher("index.jsp");

        dispatcher.forward(req, resp);
    }

    private void signUp(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("username");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String confirmPassword = req.getParameter("confirm_password");

        User user = new User(username, email, password);

        if (validate(user) && password.equals(confirmPassword)) {
            try {
                userDAO.save(user);

                HttpSession session = req.getSession();

                session.setAttribute("user", user);

                RequestDispatcher dispatcher = req.getRequestDispatcher("profile.jsp");

                dispatcher.forward(req, resp);
            } catch (SQLException e) {
                // (fix) the exception isn't shown to the user
                // especially when the user enter duplicate input
                throw new RuntimeException("YOU SUCK");
            }
        }
    }

    private void signIn(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException, SQLException {
        String username = req.getParameter("username");
        String password = req.getParameter("password");

        User user = userDAO.findByUsername(username);

        HttpSession session = req.getSession();
        User sessionUser = (User) session.getAttribute("user");

        if (user != null) {
            if (sessionUser == null) {
                session.setAttribute("user", user);

                RequestDispatcher dispatcher = req.getRequestDispatcher("profile.jsp");

                dispatcher.forward(req, resp);
            } else {
                System.out.println("You have already logged in");
            }
        } else {
            System.out.println("The user does not exist");
        }
    }

    private boolean validate(User user) {
        Pattern usernamePattern = Pattern.compile("^[a-zA-Z][a-zA-Z0-9_]{4,14}$");
        Matcher usernameMatcher = usernamePattern.matcher(user.getUsername());
        boolean validUsername = usernameMatcher.matches();

        Pattern emailPattern = Pattern.compile("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$");
        Matcher emailMatcher = emailPattern.matcher(user.getEmail());
        boolean validEmail = emailMatcher.matches();

        Pattern passwordPattern = Pattern.compile("^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[^A-Za-z0-9\\s])(?=\\S+$).{8,20}$");
        Matcher passwordMatcher = passwordPattern.matcher(user.getPassword());
        boolean validPassword = passwordMatcher.matches();

        return validUsername && validEmail && validPassword;
    }
}
