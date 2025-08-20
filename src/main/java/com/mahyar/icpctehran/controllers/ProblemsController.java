package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.ProblemDAO;
import jakarta.annotation.Resource;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/problems")
public class ProblemsController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    ProblemDAO problemDAO;

    @Override
    public void init() throws ServletException {
        problemDAO = new ProblemDAO(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setAttribute("problems", problemDAO.findAll());

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("problems.jsp");

            requestDispatcher.forward(req, resp);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
