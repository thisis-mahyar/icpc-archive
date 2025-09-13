USE icpc_archive;

CREATE TABLE IF NOT EXISTS contests
(
    id   INT AUTO_INCREMENT PRIMARY KEY,
    year INT NOT NULL UNIQUE,
    problem_no INT NOT NULL
);
