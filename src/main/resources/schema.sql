--drop table clients;
--drop table pets;
--drop table appointment;

--drop table clients;
create table clients (
	id integer PRIMARY KEY AUTOINCREMENT,
	name varchar(255),
	phone_number varchar(255),
	address varchar(255)
);

create table pets (
	id integer PRIMARY KEY AUTOINCREMENT,
	name varchar(255),
	gender varchar(255),
	altered boolean,
	client_id integer,
	FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE
);

CREATE TABLE appointments(
	id integer PRIMARY KEY AUTOINCREMENT,
	client_id integer,
	pet_id integer, 
	appt_type varchar(25),
	appt_date varchar(25),
	appt_time varchar(25),
	FOREIGN KEY (client_id) REFERENCES clients(id)
	FOREIGN KEY (pet_id) REFERENCES pet(id)
);

create table users (
	id integer PRIMARY KEY AUTOINCREMENT,
	username varchar(255),
	encoded_password varchar(255),
	role varchar(255)
);

insert into users values (null, 'admin', 'password', 'SUPER_ADMIN');
