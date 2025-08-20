package com.mahyar.icpctehran.models;

public class Sample {
    Problem problem;
    Integer number;
    String input;
    String output;
    String note;

    public Sample(Problem problem, Integer number, String input, String output, String note) {
        this.problem = problem;
        this.number = number;
        this.input = input;
        this.output = output;
        this.note = note;
    }

    public Problem getProblem() {
        return problem;
    }

    public void setProblem(Problem problem) {
        this.problem = problem;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
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

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "Sample{" +
                "problem=" + problem +
                ", number=" + number +
                ", input='" + input + '\'' +
                ", output='" + output + '\'' +
                ", note='" + note + '\'' +
                '}';
    }
}
