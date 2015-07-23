DROP TABLE IF EXISTS persons;

DROP TABLE IF EXISTS apartments;

--  will drop the tables everytime I merge with ruby
--  i.e., loading the schema
--  psql -d database < something_schema.sql

CREATE TABLE persons(
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INT,
  gender TEXT,
  apartment_id INT
);

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  address TEXT,
  monthly_rent INT,
  sqft INT,
  num_beds INT,
  num_baths INT
);
 --
 -- the tables to create.  attributes will be loaded
 -- into the classes via activerecord.
