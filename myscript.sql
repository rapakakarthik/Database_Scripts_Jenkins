-- -- Add mobile column if it does not exist
-- ALTER TABLE devera ADD COLUMN IF NOT EXISTS mobile VARCHAR(15);

-- Update the user with new values
UPDATE devera 
SET usermail = 'dakumaharaj', mail = 'daku@example.com', mobile = '1234567890' 
WHERE usermail = 'gamechanger';