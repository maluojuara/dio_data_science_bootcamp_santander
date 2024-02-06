-- INNER JOIN --

-- Return users who have a reservation --
SELECT * FROM users u
INNER JOIN reservations r ON u.id = r.user_id;


-- Return users who have a reservation and their respective destinations --
SELECT * FROM users u
INNER JOIN reservations r ON u.id = r.user_id
INNER JOIN destinations d ON r.destinations_id = d.id;

-- LEFT JOIN --

-- Return all users and their reservations, even if the  --
-- users don't have a reservation --
SELECT * FROM users u
LEFT JOIN reservation r 
    ON u.id = r.user_id;


-- RIGH JOIN --

-- Rreturns all destinations and reservations, even if
-- those destinations do not have associated reservations --
SELECT * FROM reservations r
RIGHT JOIN destinations d
    ON d.id = r.destination_id;

-- SUB QUERIES --

-- Find the less popular destinations --
SELECT dest_name
FROM destinations
WHERE id NOT IN (SELECT destination_id FROM reservations)
ORDER BY id;

-- Count reservations for each user --
SELECT username,
(SELECT COUNT(*) FROM reservations WHERE user_id = users.id) 
AS total_reservations
FROM users;


