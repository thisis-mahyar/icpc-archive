package com.mahyar.icpctehran.services;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

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
}
