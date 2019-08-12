DROP TABLE lightsabers;
DROP TABLE characters;

CREATE TABLE characters (
  id SERIAL8 PRIMARY KEY,
  name VARCHAR(255),
  darkside BOOLEAN,
  age INT
);

CREATE TABLE lightsabers (
  id SERIAL8 PRIMARY KEY,
  colour VARCHAR(255) NOT NULL,
  hilt_metal VARCHAR(255) NOT NULL,
  character_id INT8 REFERENCES characters(id)
);

INSERT INTO characters (name, darkside, age) VALUES ('Obi-wan Kenobi', false, 27);
INSERT INTO characters (name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters (name, darkside, age) VALUES ('Darth Maul', true, 32);
INSERT INTO characters (name, darkside, age) VALUES ('Luke Skywalker', false, 17);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtroper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtroper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtroper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtroper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtroper', true, 25);
INSERT INTO characters (name, darkside, age) VALUES ('Stormtroper', true, 28);

-- UPDATE characters SET age = 26 WHERE id = 3;
-- DELETE FROM characters WHERE id = 2;
-- INSERT INTO characters (name, darkside) VALUES ('Yoda', false);
-- UPDATE characters SET (name , darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
-- UPDATE characters SET age = 65 WHERE name = 'Obi-wan Kenobi';
-- -- DELETE FROM characters WHERE name = 'Darth Maul';
-- DELETE FROM characters;
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('green', 'palladium', 1);
INSERT INTO lightsabers (colour, hilt_metal, character_id) VALUES ('red', 'gold', 2);

SELECT * FROM characters;
SELECT * FROM lightsabers;
