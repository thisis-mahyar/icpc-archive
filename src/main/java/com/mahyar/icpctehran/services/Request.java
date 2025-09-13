package com.mahyar.icpctehran.services;

public class Request {
    public String sourceCode;
    public int languageId;
    public String input;

    public Request(String sourceCode, int languageId, String input) {
        this.sourceCode = sourceCode;
        this.languageId = languageId;
        this.input = input;
    }
}
