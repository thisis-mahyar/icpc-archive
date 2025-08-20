USE icpc_archive;

CREATE TABLE IF NOT EXISTS samples
(
    problem_id INT,
    number     INT,
    input      TEXT NOT NULL,
    output     TEXT NOT NULL,
    note       TEXT,
    PRIMARY KEY (problem_id, number)
);

ALTER TABLE samples
    ADD FOREIGN KEY (problem_id) REFERENCES problems (id);
