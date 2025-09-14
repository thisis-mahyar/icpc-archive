package com.mahyar.icpctehran.services.judge0;

import com.fasterxml.jackson.annotation.JsonProperty;

public class Status {
    @JsonProperty("id")
    private int id;

    @JsonProperty("description")
    private String description;

    public Status() {}

    public Status(int id, String description) {
        this.id = id;
        this.description = description;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public String toString() {
        return "Status{" +
                "id=" + id +
                ", description='" + description + '\'' +
                '}';
    }
}
