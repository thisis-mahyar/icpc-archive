package com.mahyar.icpctehran.services.judge0;

import com.fasterxml.jackson.annotation.JsonProperty;

// cpu time limit and memory limit may be added in future

public class SubmissionRequest {
    @JsonProperty("source_code")
    private String sourceCode;

    @JsonProperty("language_id")
    private int languageId;

    @JsonProperty("stdin")
    private String stdIn;

    @JsonProperty("expected_output")
    private String expectedOutput;

    public SubmissionRequest(String sourceCode, int languageId, String stdIn) {
        this.sourceCode = sourceCode;
        this.languageId = languageId;
        this.stdIn = stdIn;
        this.expectedOutput = "";
    }

    public SubmissionRequest(String sourceCode, int languageId, String stdIn, String expectedOutput) {
        this.sourceCode = sourceCode;
        this.languageId = languageId;
        this.stdIn = stdIn;
        this.expectedOutput = expectedOutput;
    }

    public String getSourceCode() {
        return sourceCode;
    }

    public void setSourceCode(String sourceCode) {
        this.sourceCode = sourceCode;
    }

    public int getLanguageId() {
        return languageId;
    }

    public void setLanguageId(int languageId) {
        this.languageId = languageId;
    }

    public String getStdIn() {
        return stdIn;
    }

    public void setStdIn(String stdIn) {
        this.stdIn = stdIn;
    }

    public String getExpectedOutput() {
        return expectedOutput;
    }

    public void setExpectedOutput(String expectedOutput) {
        this.expectedOutput = expectedOutput;
    }
}
