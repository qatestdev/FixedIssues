-- This file contains issues that can be detected by SQL tools

-- Creating a table without a primary key
CREATE TABLE users (
    username VARCHAR(50),
    email VARCHAR(100),
    password VARCHAR(50) -- Password stored in plain text
);

-- Selecting all columns
SELECT * FROM users;

-- Using SELECT in a loop
BEGIN
    FOR i IN 1..1000 LOOP
        SELECT * FROM users WHERE id = i; -- Should use JOIN or IN
    END LOOP;
END;

-- Not using parameters (SQL injection risk)
EXECUTE IMMEDIATE 'SELECT * FROM users WHERE username = ' || user_input;

-- Unused index
CREATE INDEX idx_unused ON users(last_login);

-- Cartesian join (missing join condition)
SELECT * FROM users, orders;

-- Creating redundant indexes
CREATE INDEX idx_email ON users(email);
CREATE INDEX idx_email_username ON users(email, username);

-- Using NOLOCK hint
SELECT * FROM users WITH (NOLOCK);

-- Selecting from multiple tables with the same alias
SELECT a.id, a.name FROM users a, orders a;