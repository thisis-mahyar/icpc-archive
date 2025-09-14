package com.mahyar.icpctehran.services.judge0;

import com.fasterxml.jackson.databind.ObjectMapper;

import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

public class JudgeService {
    private static final String API_URL = "https://ce.judge0.com/submissions?wait=true";
    private static final String API_KEY = "6f2069ae81msh17fff61c613b778p1d7a51jsn2e9975c73d26";
    private static final String API_HOST = "judge0-ce.p.rapidapi.com";
    private static final String CONTENT_TYPE = "application/json";

    private final HttpClient client = HttpClient.newHttpClient();
    private final ObjectMapper mapper = new ObjectMapper();

    public SubmissionResponseDTO submitCode(SubmissionRequest submissionRequest) throws Exception {
        // convert java object into json
        String jsonBody = mapper.writeValueAsString(submissionRequest);

        HttpRequest request = HttpRequest.newBuilder()
                .uri(URI.create(API_URL))
                .header("X-RapidAPI-Key", API_KEY)
                .header("X-RapidAPI-Host", API_HOST)
                .header("Content-Type", CONTENT_TYPE)
                .POST(HttpRequest.BodyPublishers.ofString(jsonBody))
                .build();

        HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

        System.out.println(response.body());

        SubmissionResponse submissionResponse = mapper.readValue(response.body(), SubmissionResponse.class);

        return new SubmissionResponseDTO(submissionResponse);
    }
}
