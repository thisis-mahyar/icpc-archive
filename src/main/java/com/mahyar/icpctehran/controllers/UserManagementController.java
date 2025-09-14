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
import java.util.List;

@WebServlet("/user-management")
public class UserManagementController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        userDAO = new UserDAO(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User sessionUser = (User) session.getAttribute("user");

        if ("admin".equals(sessionUser.getUsername())) {
            try {
                if ("delete".equals(req.getParameter("command"))) {
                    int id = Integer.parseInt(req.getParameter("id"));
                    userDAO.delete(id);
                } else if ("update".equals(req.getParameter("command"))) {
                    int id = Integer.parseInt(req.getParameter("id"));
                    String username = req.getParameter("username");
                    String email = req.getParameter("email");
                    String password = req.getParameter("password");

                    User user = new User(id, username, email, password);

                    userDAO.update(user);
                }

                List<User> users = userDAO.findAll();

                req.setAttribute("users", users);

                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/user-management.jsp");

                requestDispatcher.forward(req, resp);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        } else {
            System.out.println("You don't have admin privileges");
        }
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            String username = req.getParameter("username");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            User user = new User(username, email, password);

            resp.sendRedirect("/user-management");

            userDAO.save(user);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
