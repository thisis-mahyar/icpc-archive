package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.ContestDAO;
import com.mahyar.icpctehran.models.Contest;
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

@WebServlet("/contests-management")
public class ContestsManagementController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    ContestDAO contestDAO;

    @Override
    public void init() throws ServletException {
        contestDAO = new ContestDAO(dataSource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        User sessionUser = (User) req.getSession().getAttribute("user");

        if ("admin".equals(sessionUser.getUsername())) {
            try {
                if ("delete".equals(req.getParameter("command"))) {
                    int id = Integer.parseInt(req.getParameter("id"));
                    contestDAO.delete(id);
                } else if ("update".equals(req.getParameter("command"))) {
                    int id = Integer.parseInt(req.getParameter("id"));
                    int year = Integer.parseInt(req.getParameter("year"));

                    Contest contest = new Contest(id, year, 0);

                    contestDAO.update(contest);
                }

                List<Contest> contests = contestDAO.findAll();

                req.setAttribute("contests", contests);

                RequestDispatcher requestDispatcher = req.getRequestDispatcher("/contests.jsp");

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
            Integer year = Integer.parseInt(req.getParameter("year"));

            Contest contest = new Contest(year, 0);

            resp.sendRedirect("/contests");

            contestDAO.save(contest);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
