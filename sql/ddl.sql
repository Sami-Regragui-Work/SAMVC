-- Active: 1767306847200@@127.0.0.1@3306@SAMVC
-- DROP DATABASE IF EXISTS SAMVC;

CREATE DATABASE IF NOT EXISTS SAMVC;
USE SAMVC;

-- Roles table (candidate, recruiter, admin)
CREATE TABLE roles (
    name VARCHAR(50) PRIMARY KEY,
    description VARCHAR(255)
);

-- Users table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    fullname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    role_name VARCHAR(50) NOT NULL,
    FOREIGN KEY (role_name) REFERENCES roles (name) ON DELETE RESTRICT
);

-- Login attempts (bonus)
-- CREATE TABLE login_attempts (
--     id INT PRIMARY KEY AUTO_INCREMENT,
--     email VARCHAR(255) NOT NULL,
--     ip_address VARCHAR(45),
--     user_agent TEXT,
--     success BOOLEAN DEFAULT FALSE,
--     attempt_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     INDEX idx_email (email),
--     INDEX idx_attempt_time (attempt_time)
-- );

-- CREATE INDEX idx_users_email ON users (email);
-- CREATE INDEX idx_users_role_name ON users (role_name);
-- CREATE INDEX idx_users_created_at ON users (created_at);