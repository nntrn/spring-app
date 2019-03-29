DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS clients (
	id integer PRIMARY KEY AUTOINCREMENT,
	name varchar(255),
	phone_number varchar(255),
	address varchar(255)
);

CREATE TABLE IF NOT EXISTS pets (
	id integer PRIMARY KEY AUTOINCREMENT,
	name varchar(255),
	gender varchar(255),
	altered boolean,
	client_id integer,
	FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE
);

CREATE INDEX IF NOT EXISTS pets_name_index ON pets (name);

CREATE TABLE appointments(
	id integer PRIMARY KEY AUTOINCREMENT,
	pet_id integer REFERENCES pets(id),
	appt_type text,
	appt_date DATE,
	appt_time integer,
	created DATE DEFAULT CURRENT_DATE
);

CREATE INDEX IF NOT EXISTS appt_pet_id_index ON appointments (pet_id);

CREATE TABLE IF NOT EXISTS users (
	id integer PRIMARY KEY AUTOINCREMENT,
	username varchar(255) NOT NULL UNIQUE,
	encoded_password varchar(255) NOT NULL,
	role varchar(255) DEFAULT 'USER'
);

-- additional tables

DROP TABLE IF EXISTS user_client;
DROP TABLE IF EXISTS veterinarians;
DROP TABLE IF EXISTS vet_appointments;
DROP TABLE IF EXISTS visits;

CREATE TABLE IF NOT EXISTS user_client (
	client_id integer REFERENCES clients(id),
	user_id integer REFERENCES users(id) DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS veterinarians(
	id integer PRIMARY KEY AUTOINCREMENT,
	name text
);

CREATE INDEX IF NOT EXISTS vet_index ON veterinarians (name);

CREATE TABLE IF NOT EXISTS vet_appointments (
	vet_id integer REFERENCES veterinarians(id),
	appt_id integer REFERENCES appointments(id)
);

CREATE TABLE IF NOT EXISTS visits (
	id          INTEGER PRIMARY KEY AUTOINCREMENT,
	pet_id      INTEGER NOT NULL REFERENCES pets(id),
  	visit_date  DATE,
  	created 	DATE DEFAULT CURRENT_DATE,
  	description VARCHAR(255)
);

CREATE INDEX IF NOT EXISTS visits_pet_id_index ON visits (pet_id);


