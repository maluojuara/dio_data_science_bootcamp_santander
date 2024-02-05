--Creating tables--

CREATE TABLE users (
	id INT UNIQUE COMMENT 'Unique user identifier',
	username VARCHAR(255) NOT NULL COMMENT 'Name of the user',
	date_of_birth DATE NOT NULL COMMENT 'User e-mail',
	adress VARCHAR(100) NOT NULL COMMENT 'User adress'
);

CREATE TABLE reservations (
	id INT UNIQUE COMMENT 'Unique reservation identifier',
	user_id INT NOT NULL COMMENT 'ID of the user who made that reservation',
	destination_id INT COMMENT 'Reference to reservation destination ID',
	reserv_status VARCHAR(50) DEFAULT 'pending' COMMENT 'Status of the reservation (pending, cancelled, confirmed etc)'
);

CREATE TABLE destinations (
	id INT UNIQUE COMMENT 'Unique destination identifier',
	dest_name VARCHAR (100) NOT NULL COMMENT 'Place of destination',
	dest_description VARCHAR (300) COMMENT 'Description of the place of destination'
);

