package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.daos.ProblemDAO;
import com.mahyar.icpctehran.daos.SubmissionDAO;
import com.mahyar.icpctehran.daos.UserDAO;
import com.mahyar.icpctehran.models.Contest;
import com.mahyar.icpctehran.models.Problem;
import com.mahyar.icpctehran.models.Submission;
import com.mahyar.icpctehran.models.User;
import com.mahyar.icpctehran.services.judge0.JudgeService;
import com.mahyar.icpctehran.services.judge0.SubmissionRequest;
import com.mahyar.icpctehran.services.judge0.SubmissionResponse;
import com.mahyar.icpctehran.services.judge0.SubmissionResponseDTO;
import com.mahyar.icpctehran.services.util.Util;
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
import java.util.Date;
import java.util.logging.Level;
import java.util.logging.Logger;

@WebServlet("/judge")
public class JudgeController extends HttpServlet {
    @Resource(name = "jdbc/icpc_archive")
    private DataSource dataSource;

    JudgeService judgeService;
    SubmissionDAO submissionDAO;
    UserDAO userDAO;
    ProblemDAO problemDAO;

    @Override
    public void init() throws ServletException {
        judgeService = new JudgeService();
        submissionDAO = new SubmissionDAO(dataSource);
        userDAO = new UserDAO(dataSource);
        problemDAO = new ProblemDAO(dataSource);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int problemId = Integer.parseInt(req.getParameter("problem_id"));
        String problemTitle = req.getParameter("problem_title");
        String contestYear = req.getParameter("contest_year");
        String sourceCode = req.getParameter("source_code");
        String stdIn = req.getParameter("stdin");
        int languageId = Integer.parseInt(req.getParameter("language_id"));
        HttpSession session = req.getSession();

        SubmissionRequest submissionRequest = new SubmissionRequest(sourceCode, languageId, stdIn);

        try {
            SubmissionResponseDTO submissionResponseDTO = judgeService.submitCode(submissionRequest);

            req.setAttribute("problem_title", problemTitle);
            req.setAttribute("contest_year", contestYear);
            req.setAttribute("language", Util.getLanguage(languageId));
            req.setAttribute("submission_response_dto", submissionResponseDTO);
            req.setAttribute("source_code", Util.formatCode(sourceCode));
            req.setAttribute("submission_time", new Date().toString());

            submissionDAO.save(new Submission("", Util.getLanguage(languageId), (User) session.getAttribute("user"), problemDAO.findById(problemId)));

            RequestDispatcher requestDispatcher = req.getRequestDispatcher("/submission.jsp"); // you have to put / before (just in this case! I don't know why!!!)

            requestDispatcher.forward(req, resp);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
