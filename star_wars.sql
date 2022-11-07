-- DROOP the characters table
DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS lightsabers;
-- CREATE Characters table

CREATE TABLE lightsabers (
    id SERIAL PRIMARY KEY,
    hilt_metal VARCHAR(255) NOT NULL,
    colour VARCHAR(255) NOT NULL
);

CREATE TABLE characters (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT NOT NULL,
    lightsaber_id INT REFERENCES lightsabers(id)
);

INSERT INTO lightsabers (hilt_metal, colour)
VALUES ('Silver', 'Blue');

INSERT INTO lightsabers (hilt_metal, colour)
VALUES ('Silver', 'Red');



INSERT INTO characters (name, darkside, age, lightsaber_id) 
VALUES ('Obi-wan Kenobi', false, 32, 1);

INSERT INTO characters (name, darkside, age, lightsaber_id) 
VALUES ('Anakin Skywalker', false, 21, 1);

INSERT INTO characters (name, darkside, age, lightsaber_id) 
VALUES ('Darth Maul', true, 332, 2);

