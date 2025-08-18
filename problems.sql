USE icpc_tehran;

CREATE TABLE IF NOT EXISTS problems
(
    id           INT AUTO_INCREMENT PRIMARY KEY,
    label        CHAR(1)      NOT NULL,
    title        VARCHAR(255) NOT NULL,
    time_limit   INT          NOT NULL DEFAULT 1000,
    memory_limit INT          NOT NULL DEFAULT 256,
    description  TEXT         NOT NULL,
    input        TEXT         NOT NULL,
    output       TEXT         NOT NULL,
    contest_id   INT          NOT NULL
);

ALTER TABLE problems
    ADD FOREIGN KEY (contest_id) REFERENCES contests (id);
