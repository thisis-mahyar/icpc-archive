package com.mahyar.icpctehran.models;

import java.util.Date;

public class Submission {
    private Integer id;

    private String token;
    private String language;
    private String submissionTime;

    private User user;
    private Problem problem;

    public Submission(Integer id, String token, String language, String submissionTime, User user, Problem problem) {
        this.id = id;
        this.token = token;
        this.language = language;
        this.submissionTime = submissionTime;
        this.user = user;
        this.problem = problem;
    }

    public Submission(String token, String language, User user, Problem problem) {
        this.token = token;
        this.language = language;
        this.user = user;
        this.problem = problem;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getToken() {
        return token;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public String getLanguage() {
        return language;
    }

    public void setLanguage(String language) {
        this.language = language;
    }

    public String getSubmissionTime() {
        return submissionTime;
    }

    public void setSubmissionTime(String submissionTime) {
        this.submissionTime = submissionTime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Problem getProblem() {
        return problem;
    }

    public void setProblem(Problem problem) {
        this.problem = problem;
    }
}
