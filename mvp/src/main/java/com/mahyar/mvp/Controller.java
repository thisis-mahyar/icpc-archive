package com.mahyar.mvp;

import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet("/controller")
public class Controller extends HttpServlet {

    JudgeService judgeService = new JudgeService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) {
        String sourceCode = req.getParameter("source_code");
        int langId = 54;
        String input = req.getParameter("input");

        try {
            String output = judgeService.submitCode(sourceCode, langId, input);

            req.setAttribute("output", output);

            req.getRequestDispatcher("questions.jsp").include(req, resp);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}