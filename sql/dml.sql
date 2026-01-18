-- Updated sql/dml.sql
INSERT INTO roles (name, description) VALUES 
('admin', 'Platform administrator'),
('recruiter', 'Company recruiter posting jobs'),
('candidate', 'Job candidate seeking opportunities');

-- Admin user
-- Generated with: password_hash('pass', PASSWORD_DEFAULT)
INSERT INTO users (role_name, fullname, email, password) VALUES 
('admin', 'Admin User', 'admin@talenthub.com', '$2y$12$6/ofA/qnmOobZDwVEHkg9OvyWysi4uhhXdUneeApYe8BZ7bp3M4Hi');