USE icpc_archive;

CREATE TABLE IF NOT EXISTS users
(
    id            INT AUTO_INCREMENT PRIMARY KEY,
    username      VARCHAR(15)  NOT NULL UNIQUE,
    email         VARCHAR(255) NOT NULL UNIQUE,
    password_hash VARCHAR(127) NOT NULL,
    created_at    TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)
