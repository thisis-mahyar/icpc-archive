package com.mahyar.icpctehran.models;

public class Problem {
    private Integer id;

    private Character label;
    private String title;
    private Integer timeLimit;
    private Integer memoryLimit;
    private String description;
    private String input;
    private String output;

    private Contest contest;

    public Problem(Integer id, Character label, String title, Integer timeLimit, Integer memoryLimit, String description, String input, String output, Contest contest) {
        this.id = id;
        this.label = label;
        this.title = title;
        this.timeLimit = timeLimit;
        this.memoryLimit = memoryLimit;
        this.description = description;
        this.input = input;
        this.output = output;
        this.contest = contest;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Character getLabel() {
        return label;
    }

    public void setLabel(Character label) {
        this.label = label;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getTimeLimit() {
        return timeLimit;
    }

    public void setTimeLimit(Integer timeLimit) {
        this.timeLimit = timeLimit;
    }

    public Integer getMemoryLimit() {
        return memoryLimit;
    }

    public void setMemoryLimit(Integer memoryLimit) {
        this.memoryLimit = memoryLimit;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getInput() {
        return input;
    }

    public void setInput(String input) {
        this.input = input;
    }

    public String getOutput() {
        return output;
    }

    public void setOutput(String output) {
        this.output = output;
    }

    public Contest getContest() {
        return contest;
    }

    public void setContest(Contest contest) {
        this.contest = contest;
    }

    @Override
    public String toString() {
        return "Problem{" +
                "id=" + id +
                ", label=" + label +
                ", title='" + title + '\'' +
                ", timeLimit=" + timeLimit +
                ", memoryLimit=" + memoryLimit +
                ", description='" + description + '\'' +
                ", input='" + input + '\'' +
                ", output='" + output + '\'' +
                ", contest=" + contest +
                '}';
    }
}
