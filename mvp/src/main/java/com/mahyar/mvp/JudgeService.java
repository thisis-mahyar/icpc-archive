package com.mahyar.mvp;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

import com.fasterxml.jackson.databind.ObjectMapper;

public class JudgeService {
    private static final String API_URL = "https://judge0-ce.p.rapidapi.com/submissions?base64_encoded=false&wait=true";
    private static final String API_KEY = "6f2069ae81msh17fff61c613b778p1d7a51jsn2e9975c73d26";
    private static final String API_HOST = "judge0-ce.p.rapidapi.com";

    private final HttpClient client = HttpClient.newHttpClient();
    private final ObjectMapper mapper = new ObjectMapper();

    public String submitCode(String sourceCode, int languageId, String stdin) throws Exception {
        JudgeRequest requestPayload = new JudgeRequest(sourceCode, languageId, stdin);
        String jsonBody = mapper.writeValueAsString(requestPayload);

        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(API_URL))
                .header("Content-Type", "application/json")
                .header("X-RapidAPI-Key", API_KEY)
                .header("X-RapidAPI-Host", API_HOST)
                .POST(HttpRequest.BodyPublishers.ofString(jsonBody))
                .build();

        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

        return response.body(); // Contains output, errors, verdict, etc.
    }

    public static void main(String[] args) throws Exception {
        JudgeService judgeService = new JudgeService();

        String sourceCode = "#include <bits/stdc++.h>\n\nusing namespace std;\n\nint main()\n{\n    int t;\n    cin >> t;\n\n    while (t--)\n    {\n        int x, y;\n        cin >> x >> y;\n\n        bool flag1 = y - x == 1;\n        bool flag2 = x > y && (x - y + 1) % 9 == 0;\n\n        if (flag1 || flag2)\n            cout << \"Yes\";\n        else\n            cout << \"No\";\n    }\n}";

        String s = judgeService.submitCode(sourceCode, 54, "7\n1 2\n77 77\n997 999\n999 1\n1000 1\n1 11\n18 1");

        System.out.println(s);
    }
}
