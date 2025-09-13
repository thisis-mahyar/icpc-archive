package com.mahyar.icpctehran.services.judge0;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

public class JudgeService {
    private static final String API_URL = "https://ce.judge0.com/submissions?wait=true";
    private static final String API_KEY = "6f2069ae81msh17fff61c613b778p1d7a51jsn2e9975c73d26";
    private static final String API_HOST = "judge0-ce.p.rapidapi.com";

    private final HttpClient client = HttpClient.newHttpClient();
    private final ObjectMapper mapper = new ObjectMapper();

    public String submitCode(SubmissionRequest submissionRequest) throws Exception {
        String jsonBody = mapper.writeValueAsString(submissionRequest);

        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(API_URL))
                .header("X-RapidAPI-Key", API_KEY)
                .header("X-RapidAPI-Host", API_HOST)
                .header("Content-Type", "application/json")
                .POST(HttpRequest.BodyPublishers.ofString(jsonBody))
                .build();

        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

        mapper.readValue(response.body(), Submission.class);

        return response.body(); // Contains output, errors, verdict, etc.
    }
}
