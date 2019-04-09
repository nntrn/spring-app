DROP TABLE IF EXISTS appointments;
DROP TABLE IF EXISTS pets;
DROP TABLE IF EXISTS clients;
DROP TABLE IF EXISTS types;
DROP TABLE IF EXISTS users;

CREATE TABLE IF NOT EXISTS clients(
    id integer PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    phone_number TEXT,
    address TEXT
);

CREATE TABLE IF NOT EXISTS types (
    id integer PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE IF NOT EXISTS pets(
    id integer PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    gender TEXT,
    altered boolean,
    client_id integer REFERENCES clients(id) ON DELETE CASCADE,
    type_id integer REFERENCES types(id)
);

/*
close_id: 
-- 1: open
-- 2: completed
-- 3: overdue
-- 3: noshow
-- 4. canceled

appt_time
700|800|900|1000|1100|1200|1300|1400|1500|1600|1700|730|830|930|1030|1130|1230|1330|1430|1530|1630|1730
*/
CREATE TABLE appointments(
    id integer PRIMARY KEY AUTOINCREMENT,
    pet_id integer REFERENCES pets(id),
    reason text,
    date DATE,
    time integer,
    visit_type TEXT,
    close_type TEXT DEFAULT "Open"
);

CREATE TABLE IF NOT EXISTS users(
    id integer PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    encoded_password TEXT NOT NULL,
    role TEXT
);

DROP TABLE IF EXISTS deleted_pets;
CREATE TABLE IF NOT EXISTS deleted_pets(
    id integer PRIMARY KEY AUTOINCREMENT,
    date_deleted TEXT DEFAULT CURRENT_DATE,
    pet_id integer,
    name TEXT,
    gender TEXT,
    altered boolean,
    type integer,
    client_id integer
);