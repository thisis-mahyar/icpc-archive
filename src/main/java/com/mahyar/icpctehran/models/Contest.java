package com.mahyar.icpctehran.models;

public class Contest {
    private Integer id;
    private Integer year;

    public Contest(Integer id, Integer year) {
        this.id = id;
        this.year = year;
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

    @Override
    public String toString() {
        return "Contest{" +
                "id=" + id +
                ", year=" + year +
                '}';
    }
}
