package com.mahyar.mvp;

import jakarta.annotation.Resource;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;

@WebServlet("/user")
public class UserController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    private UserDAO userDAO;

    @Override
    public void init() throws ServletException {
        super.init();

        // dao is created inside the init
        userDAO = new UserDAO(dataSource);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String command = req.getParameter("command");

        if ("sign-up".equals(command)) {
            String username = req.getParameter("username");
            String email = req.getParameter("email");
            String password = req.getParameter("password");

            userDAO.addUser(username, email, password);
        }
    }
}
