USE icpc_tehran;

CREATE TABLE IF NOT EXISTS languages
(
    id        INT PRIMARY KEY,       -- Match Judge0's language ID for easy mapping
    name      VARCHAR(255) NOT NULL, -- Human-readable name (e.g., "GNU G++ 13.2.0")
    judge0_id INT          NOT NULL, -- Judge0's ID for the language
    extension VARCHAR(15)  NOT NULL, -- File extension (e.g., ".cpp", ".java")
    version   VARCHAR(63)            -- Optional: version string
);
