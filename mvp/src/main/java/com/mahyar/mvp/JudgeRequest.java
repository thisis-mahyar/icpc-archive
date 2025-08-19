package com.mahyar.mvp;

public class JudgeRequest {
    public String source_code;
    public int language_id;
    public String stdin;

    public JudgeRequest(String source_code, int language_id, String stdin) {
        this.source_code = source_code;
        this.language_id = language_id;
        this.stdin = stdin;
    }
}
