package com.mahyar.icpctehran.services.judge0;

import com.fasterxml.jackson.annotation.JsonProperty;

public class SubmissionResponse {
    @JsonProperty("stdout")
    private String stdout;

    private String time;

    private int memory;

    @JsonProperty("stderr")
    private String stdErr;

    private String token;

    @JsonProperty("compile_output")
    private String compileOutput;

    private String message;

    private Status status;

    public SubmissionResponse(String stdout, String time, int memory, String stdErr, String token, String compileOutput, String message, Status status) {
        this.stdout = stdout;
        this.time = time;
        this.memory = memory;
        this.stdErr = stdErr;
        this.token = token;
        this.compileOutput = compileOutput;
        this.message = message;
        this.status = status;
    }

    public String getStdout() {
        return stdout;
    }

    public void setStdout(String stdout) {
        this.stdout = stdout;
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
                "stdout='" + stdout + '\'' +
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
