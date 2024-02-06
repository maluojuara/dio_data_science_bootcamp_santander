-- 1. Selecting  all registers from table 'users' --
SELECT * FROM users;


-- 2. Selecting name and date of birth from table 'users' --
SELECT username, date_of_birth FROM users;


-- 3. Selecting all users called Bob Dylan --
SELECT * FROM users WHERE username = 'Bob Dylan';


-- 4. Selecting all users born in 1997 or after --
SELECT * FROM users WHERE date_of_birth >= '1997-01-01';

---------------------------------------------------------------

-- OPERATOR 'LIKE' --

-- Select all destinations whose names contain the lettter 'A''
SELECT * FROM destinations WHERE dest_name LIKE '%A%';

-- Select all destinations whose names start with 'N'
SELECT * FROM destinations WHERE dest_name LIKE 'N%';

