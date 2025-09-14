package com.mahyar.icpctehran.models;

public class Contest {
    private Integer id;
    private Integer year;
    private Integer questionNo;

    public Contest(Integer year, Integer questionNo) {
        this.year = year;
        this.questionNo = questionNo;
    }

    public Contest(Integer id, Integer year, Integer questionNo) {
        this.id = id;
        this.year = year;
        this.questionNo = questionNo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getYear() {
        return year;
    }

    public void setYear(Integer year) {
        this.year = year;
    }

    public Integer getQuestionNo() {
        return questionNo;
    }

    public void setQuestionNo(Integer questionNo) {
        this.questionNo = questionNo;
    }

    @Override
    public String toString() {
        return "Contest{" +
                "id=" + id +
                ", year=" + year +
                ", questionNo=" + questionNo +
                '}';
    }
}
