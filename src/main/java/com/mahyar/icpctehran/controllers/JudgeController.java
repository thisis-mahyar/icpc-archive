package com.mahyar.icpctehran.controllers;

import com.mahyar.icpctehran.services.JudgeService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/judge")
public class JudgeController extends HttpServlet {
    JudgeService judgeService;

    @Override
    public void init() throws ServletException {
        judgeService = new JudgeService();
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String sourceCode = req.getParameter("source_code");
        String input = req.getParameter("input");
        int langId = Integer.parseInt(req.getParameter("language"));

        try {
            String output = judgeService.submitCode(sourceCode, langId, input);

            resp.setContentType("text/html");

            resp.getWriter().print("<html><body>" + output + "</body></html>");

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
