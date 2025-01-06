-- Create a table named devera if it does not exist
CREATE TABLE IF NOT EXISTS devera (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usermail VARCHAR(100) NOT NULL,
    mail VARCHAR(100) NOT NULL
);

-- Insert a test record
INSERT INTO devera (usermail, mail) VALUES ('deva', 'devra@example.com');

-- Update the record to change usermail and mail
UPDATE devera 
SET usermail = 'gamechanger', mail = 'game@example.com' 
WHERE usermail = 'deva';

-- Select the records to verify insertion and update
SELECT * FROM devera;