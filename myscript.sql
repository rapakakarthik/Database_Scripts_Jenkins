-- Create a test table if it does not exist
CREATE TABLE IF NOT EXISTS test_mvk (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    status VARCHAR(20) DEFAULT 'active' -- New column for testing
);

-- Insert a test record if it does not already exist
INSERT INTO test_mvk (name, email, status)
SELECT 'Test mvk', 'testuser@example.com', 'active'
WHERE NOT EXISTS (SELECT 1 FROM test_mvk WHERE email = 'testuser@example.com');

-- Insert another test record for testing
INSERT INTO test_mvk (name, email, status)
VALUES ('Another User', 'anotheruser@example.com', 'active');

-- Update the record to change the name if it exists
UPDATE test_mvk
SET name = 'Updated Test mvk'
WHERE email = 'testuser@example.com';

-- Delete a record for testing purposes
DELETE FROM test_mvk
WHERE email = 'anotheruser@example.com';

-- Select the records to verify insertion, update, and deletion
SELECT * FROM test_mvk;