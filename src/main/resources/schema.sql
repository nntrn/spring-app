-- CONNECTION: name=SQLite - spring-app.db

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
	appt_type varchar(25),
	appt_date varchar(25),
	appt_time varchar(25),
	created DATE DEFAULT CURRENT_DATE
);

CREATE INDEX IF NOT EXISTS appt_pet_id_index ON appointments (pet_id);

CREATE TABLE IF NOT EXISTS users (
	id integer PRIMARY KEY AUTOINCREMENT,
	username varchar(255) NOT NULL UNIQUE,
	encoded_password varchar(255) NOT NULL,
	role varchar(255) DEFAULT 'USER'
);


-- misc tables

DROP TABLE IF EXISTS visits;

CREATE TABLE IF NOT EXISTS  visits (
  id          INTEGER PRIMARY KEY AUTOINCREMENT,
  pet_id      INTEGER NOT NULL REFERENCES pets(id),
  visit_date  DATE,
  created 	  DATE DEFAULT CURRENT_DATE,
  description VARCHAR(255)
);

CREATE INDEX IF NOT EXISTS  visits_pet_id_index ON visits (pet_id);

