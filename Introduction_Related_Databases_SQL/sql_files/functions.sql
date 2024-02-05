-- AVG (Average): Average age of users --
SELECT AVG(TIMESTAMPDIFF(YEAR, date_of_birth, CURRENT_DATE())) AS avg_age
FROM users;

-- SUM: Sum of users' ages
SELECT SUM(TIMESTAMPDIFF(YEAR, date_of_birth, CURRENT_DATE())) AS sum_age
FROM users;

-- GROUP BY --

-- Calculates number of reservations per destination --
SELECT *, COUNT(*) 
AS total_reservations 
FROM reservations 
GROUP BY destination_id ;


-- ORDER BY --

SELECT username, date_of_birth
FROM users
ORDER BY date_of_birth,;