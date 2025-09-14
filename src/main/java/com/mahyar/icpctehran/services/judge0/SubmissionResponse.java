package com.mahyar.icpctehran.services.judge0;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;

@JsonIgnoreProperties(ignoreUnknown = true)
public class SubmissionResponse {
    @JsonProperty("stdout")
    private String stdOut;

    @JsonProperty("time")
    private String time;

    @JsonProperty("memory")
    private int memory;

    @JsonProperty("stderr")
    private String stdErr;

    @JsonProperty("token")
    private String token;

    @JsonProperty("compile_output")
    private String compileOutput;

    @JsonProperty("message")
    private String message;

    private Status status;

    public SubmissionResponse() {}

    public SubmissionResponse(String stdout, String time, int memory, String stdErr, String token, String compileOutput, String message, Status status) {
        this.stdOut = stdout;
        this.time = time;
        this.memory = memory;
        this.stdErr = stdErr;
        this.token = token;
        this.compileOutput = compileOutput;
        this.message = message;
        this.status = status;
    }

    public String getStdout() {
        return stdOut;
    }

    public void setStdout(String stdout) {
        this.stdOut = stdout;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public int getMemory() {
        return memory;
    }

    public void setMemory(int memory) {
        this.memory = memory;
    }

    public String getStdErr() {
        return stdErr;
    }

    public void setStdErr(String stdErr) {
        this.stdErr = stdErr;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getCompileOutput() {
        return compileOutput;
    }

    public void setCompileOutput(String compileOutput) {
        this.compileOutput = compileOutput;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "SubmissionResponse{" +
                "stdout='" + stdOut + '\'' +
                ", time='" + time + '\'' +
                ", memory=" + memory +
                ", stdErr='" + stdErr + '\'' +
                ", token='" + token + '\'' +
                ", compileOutput='" + compileOutput + '\'' +
                ", message='" + message + '\'' +
                ", status=" + status +
                '}';
    }
}
