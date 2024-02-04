-- Updating data in tables --
-- !! Important: always use WHERE --

UPDATE users 
SET adress = 'New Street, 123, California' 
WHERE username = 'Bob Dylan';


UPDATE reservations
SET reserv_status = 'Confirmed'
WHERE reserv_status = 'Pending' OR reserv_status = 'Cancelled';