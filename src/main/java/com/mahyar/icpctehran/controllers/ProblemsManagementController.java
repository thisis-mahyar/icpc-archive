package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.ContestDAO;
import com.mahyar.icpctehran.daos.ProblemDAO;
import com.mahyar.icpctehran.models.Contest;
import com.mahyar.icpctehran.models.Problem;
import com.mahyar.icpctehran.models.User;
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

@WebServlet("/problems-management")
public class ProblemsManagementController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    ProblemDAO problemDAO;
    ContestDAO contestDAO;

    @Override
    public void init() throws ServletException {
        problemDAO = new ProblemDAO(dataSource);
        contestDAO = new ContestDAO(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User sessionUser = (User) req.getSession().getAttribute("user");

        if ("admin".equals(sessionUser.getUsername())) {
            try {
                if ("delete".equals(req.getParameter("command"))) {
                    int id = Integer.parseInt(req.getParameter("id"));
                    problemDAO.delete(id);
                } else if ("update".equals(req.getParameter("command"))) {
                    int id = Integer.parseInt(req.getParameter("id"));
                    String label = req.getParameter("label");
                    String title = req.getParameter("title");
                    String description = req.getParameter("description");
                    String input = req.getParameter("input");
                    String output = req.getParameter("output");
                    int contestId = Integer.parseInt(req.getParameter("contestId"));

                    Problem problem = new Problem(id, label.charAt(0), title, 1, 256, description, input, output, contestDAO.findById(contestId));

                    problemDAO.update(problem);
                }

                int contestId = Integer.parseInt(req.getParameter("contestId"));
                resp.sendRedirect("/contest/" + contestId);
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
            int id = Integer.parseInt(req.getParameter("id"));
            String label = req.getParameter("label");
            String title = req.getParameter("title");
            String description = req.getParameter("description");
            String input = req.getParameter("input");
            String output = req.getParameter("output");
            int contestId = Integer.parseInt(req.getParameter("contestId"));

            Problem problem = new Problem(id, label.charAt(0), title, 1, 256, description, input, output, contestDAO.findById(contestId));

            resp.sendRedirect("/contest/" + contestId);

            problemDAO.save(problem);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
