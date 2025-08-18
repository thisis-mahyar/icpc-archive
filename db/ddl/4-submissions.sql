USE icpc_tehran;

CREATE TABLE IF NOT EXISTS submissions
(
    id           INT PRIMARY KEY AUTO_INCREMENT,
    submit_time  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    exec_time_ms INT,
    memory_kb    INT,
    status       ENUM (
        'PENDING',
        'RUNNING',
        'ACCEPTED',
        'WRONG_ANSWER',
        'TIME_LIMIT_EXCEEDED',
        'MEMORY_LIMIT_EXCEEDED',
        'RUNTIME_ERROR',
        'COMPILATION_ERROR'
        )                  NOT NULL DEFAULT 'PENDING',
    source_code  TEXT      NOT NULL,
    language_id  INT       NOT NULL,
    problem_id   INT       NOT NULL,
    user_id      INT       NOT NULL,

    FOREIGN KEY (language_id) REFERENCES languages (id),
    FOREIGN KEY (problem_id) REFERENCES problems (id),
    FOREIGN KEY (user_id) REFERENCES users (id)
);
