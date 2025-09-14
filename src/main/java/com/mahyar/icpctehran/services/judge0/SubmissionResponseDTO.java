package com.mahyar.icpctehran.services.judge0;

import com.fasterxml.jackson.annotation.JsonProperty;

public class SubmissionResponseDTO {
    private double time;
    private double memory;
    private Status status;

    public SubmissionResponseDTO(SubmissionResponse submissionResponse) {
        this.time = Double.parseDouble(submissionResponse.getTime());
        this.memory = submissionResponse.getMemory();
        this.status = submissionResponse.getStatus();
    }

    public double getTime() {
        return time;
    }

    public void setTime(double time) {
        this.time = time;
    }

    public double getMemory() {
        return memory;
    }

    public void setMemory(double memory) {
        this.memory = memory;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "SubmissionResponseDTO{" +
                "time='" + time + '\'' +
                ", memory=" + memory +
                ", status=" + status +
                '}';
    }
}
