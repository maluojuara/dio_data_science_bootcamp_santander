-- Inserting data into tables --

INSERT INTO travels.users (id, username, date_of_birth, adress) VALUES
(1, 'Malu Araujo', '1998-12-21', 'Example Street, 573, Canada'),
(2, 'Bob Dylan', '1941-05-24', 'Highway Revisited, 51, USA'),
(2, 'Olivia Rodrigo', '2003-02-20', 'Betrayal Avenue, 22, USA');

INSERT INTO travels.destinations (id, dest_name, dest_description) VALUES
(1, 'Aracaju', 'It''s the capital of the state of Sergipe, located in Brasil'),
(2, 'New York', 'The city that never sleeps, an amazing destination'),
(3, 'Portugal', 'One of the safest countries in the world and has a good food');

INSERT INTO travels.reservations (id, user_id, destination_id, reserv_status) VALUES 
(1, 1, 1, 'Confirmed'),
(2, 2, 2, 'Cancelled'),
(3, 3, 3, 'Pending');
