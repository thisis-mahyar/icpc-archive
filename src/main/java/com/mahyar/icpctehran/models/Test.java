package com.mahyar.icpctehran.models;

public class Test {
    Problem problem;
    Integer number;
    String inputPath;
    String outputPath;

    public Test(Problem problem, Integer number, String inputPath, String outputPath) {
        this.problem = problem;
        this.number = number;
        this.inputPath = inputPath;
        this.outputPath = outputPath;
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

    public String getInputPath() {
        return inputPath;
    }

    public void setInputPath(String inputPath) {
        this.inputPath = inputPath;
    }

    public String getOutputPath() {
        return outputPath;
    }

    public void setOutputPath(String outputPath) {
        this.outputPath = outputPath;
    }

    @Override
    public String toString() {
        return "Test{" +
                "problem=" + problem +
                ", number=" + number +
                ", inputPath='" + inputPath + '\'' +
                ", outputPath='" + outputPath + '\'' +
                '}';
    }
}
