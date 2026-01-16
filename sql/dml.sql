-- Updated sql/dml.sql
INSERT INTO roles (name, description) VALUES 
('admin', 'Platform administrator'),
('recruiter', 'Company recruiter posting jobs'),
('candidate', 'Job candidate seeking opportunities');

-- Admin user
-- Generated with: password_hash('pass', PASSWORD_DEFAULT)
INSERT INTO users (role_name, fullname, email, password) VALUES 
('admin', 'Admin User', 'admin@talenthub.com', '$2y$10$VM1b6rS5x8vX7qW2zY3a4.O5pQ6rT7uV8wX9yZ0aB1cD2eF3gH4i');