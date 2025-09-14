package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.SubmissionDAO;
import com.mahyar.icpctehran.models.Submission;
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

@WebServlet("/submissions")
public class SubmissionsController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    SubmissionDAO submissionDAO;

    @Override
    public void init() throws ServletException {
        submissionDAO = new SubmissionDAO(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        User sessionUser = (User) session.getAttribute("user");

        if ("admin".equals(sessionUser.getUsername())) {
            try {
                if ("delete".equals(req.getParameter("command"))) {
                    int id = Integer.parseInt(req.getParameter("id"));
                    submissionDAO.delete(id);
                }

                List<Submission> submissions = submissionDAO.findAll();

                req.setAttribute("submissions", submissions);
                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/submissions.jsp");

                requestDispatcher.forward(req, resp);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }
    }
}
