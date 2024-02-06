-- Modifying an attribute so that it becomes a PRIMARY KEY --
-- (alter table command) --

ALTER TABLE users
ADD PRIMARY KEY (id);

ALTER TABLE users 
MODIFY COLUMN id INT AUTO_INCREMENT;


ALTER TABLE destinations
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);


ALTER TABLE reservations
MODIFY COLUMN id INT AUTO_INCREMENT,
ADD PRIMARY KEY (id);

-- Defining FOREIGN KEYS --
-- (alter table command) --

-- Adding foreign key to "reservations" referencing "destinations" -- 

ALTER TABLE reservations
ADD CONSTRAINT fk_reservations_dest
FOREIGN KEY (destination_id) REFERENCES destinations(id);

-- Adding foreign key to "reservations" referencing "users" -- 

ALTER TABLE reservations
ADD CONSTRAINT fk_reservations_user
FOREIGN KEY (user_id) REFERENCES users(id);
