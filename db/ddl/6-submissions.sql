USE icpc_archive;

CREATE TABLE IF NOT EXISTS submissions
(
    id          INT PRIMARY KEY AUTO_INCREMENT,
    submit_time TIMESTAMP                        NOT NULL DEFAULT CURRENT_TIMESTAMP,
    time        INT                              NOT NULL,
    memory      INT                              NOT NULL,
    status      ENUM ('ACCEPTED','WRONG_ANSWER') NOT NULL,
    source_code TEXT                             NOT NULL,
    language    VARCHAR(255)                     NOT NULL,
    problem_id  INT                              NOT NULL,
    user_id     INT                              NOT NULL,

    FOREIGN KEY (problem_id) REFERENCES problems (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);
