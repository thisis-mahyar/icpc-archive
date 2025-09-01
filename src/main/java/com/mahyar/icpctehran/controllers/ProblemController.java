package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.ProblemDAO;
import com.mahyar.icpctehran.daos.SampleDAO;
import com.mahyar.icpctehran.models.Problem;
import com.mahyar.icpctehran.models.Sample;
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
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = "/problem/*")
public class ProblemController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    ProblemDAO problemDAO;
    SampleDAO sampleDAO;

    @Override
    public void init() throws ServletException {
        problemDAO = new ProblemDAO(dataSource);
        sampleDAO = new SampleDAO(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] url = req.getRequestURL().toString().split("/");
        int id = Integer.parseInt(url[url.length - 1]);

        try {
            Problem problem = problemDAO.findById(id);
            List<Sample> samples = sampleDAO.findByProblem(problem);

            req.setAttribute("problem", problem);
            req.setAttribute("samples", samples);

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/problem.jsp"); // you have to put / before (just in this case! I don't know why!!!)

            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
