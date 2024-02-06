-- Updating the database structure following Normalization Rules --

-- 1NF First Normal Form - Atomic Values --

-- Creating new columns for adress -- 
ALTER TABLE users
ADD street VARCHAR(100),
ADD a_number VARCHAR(10),
ADD country VARCHAR(20);

-- Splitting the adress into smaller information and updating db--
UPDATE users
SET street = SUBSTRING_INDEX(SUBSTRING_INDEX(adress, ',', 1), ',', -1),
    a_number = SUBSTRING_INDEX(SUBSTRING_INDEX(adress, ',', 2), ',', -1),
    country = SUBSTRING_INDEX(SUBSTRING_INDEX(adress, ',', 3), ',', -1);

-- Deleting adress column from the users table --
ALTER TABLE users
DROP COLUMN adress;
