-- Create a test table
CREATE TABLE IF NOT EXISTS test_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Insert a test record
INSERT INTO test_users (name, email) VALUES ('Test User', 'testuser@example.com');

-- Select the record to verify insertion
SELECT * FROM test_users;