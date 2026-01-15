-- Active: 1767306847200@@127.0.0.1@3306@SAMVC
-- DROP DATABASE IF EXISTS SAMVC;

CREATE DATABASE IF NOT EXISTS SAMVC;
USE SAMVC;

-- Roles table (candidate, recruiter, admin)
CREATE TABLE roles (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL UNIQUE,
    description VARCHAR(255)
    -- INDEX idx_name (name)
);

-- Users table
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    role_id INT NOT NULL,
    fullname VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    FOREIGN KEY (role_id) REFERENCES roles (id) ON DELETE RESTRICT
    -- INDEX idx_email (email),
    -- INDEX idx_role_id (role_id)
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