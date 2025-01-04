-- Create a test table if it does not exist
CREATE TABLE IF NOT EXISTS test_mvk (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);

-- Insert a test record if it does not already exist
INSERT INTO test_mvk (name, email)
SELECT 'Test mvk', 'testuser@example.com'
WHERE NOT EXISTS (SELECT 1 FROM test_mvk WHERE email = 'testuser@example.com');

-- Select the record to verify insertion
SELECT * FROM test_mvk;