package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.ProblemDAO;
import com.mahyar.icpctehran.models.Problem;
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

@WebServlet(urlPatterns = "/problem/*")
public class ProblemController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    ProblemDAO problemDAO;

    @Override
    public void init() throws ServletException {
        problemDAO = new ProblemDAO(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String url = req.getRequestURL().toString();

        String[] arr = url.split("/");

        int id = Integer.parseInt(arr[arr.length - 1]);

        try {
            Problem problem = problemDAO.findById(id);

            req.setAttribute("problem", problem);

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/problem.jsp"); // you have to put / before (just in this case! I don't know why!!!)

            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
