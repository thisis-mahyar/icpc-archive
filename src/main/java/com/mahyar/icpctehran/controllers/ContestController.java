package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.ContestDAO;
import com.mahyar.icpctehran.daos.ProblemDAO;
import com.mahyar.icpctehran.models.Contest;
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
import java.util.List;

@WebServlet(urlPatterns = "/contest/*")
public class ContestController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    ContestDAO contestDAO;
    ProblemDAO problemDAO;

    @Override
    public void init() throws ServletException {
        contestDAO = new ContestDAO(dataSource);
        problemDAO = new ProblemDAO(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String[] url = req.getRequestURL().toString().split("/");
        int contestId = Integer.parseInt(url[url.length - 1]);

        try {
            Contest contest = contestDAO.findById(contestId);
            List<Problem> contestProblems = problemDAO.findByContest(contest);

            req.setAttribute("contest", contest);
            req.setAttribute("contest_problems", contestProblems);

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/contest.jsp"); // you have to put / before (just in this case! I don't know why!!!)

            requestDispatcher.forward(req, resp);

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
