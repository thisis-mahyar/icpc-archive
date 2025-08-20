USE icpc_archive;

CREATE TABLE IF NOT EXISTS tests
(
    problem_id  INT,
    number      INT,
    input_path  VARCHAR(255) NOT NULL,
    output_path VARCHAR(255) NOT NULL,
    PRIMARY KEY (problem_id, number)
);

ALTER TABLE tests
    ADD FOREIGN KEY (problem_id) REFERENCES problems (id);