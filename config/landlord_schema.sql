DROP TABLE IF EXISTS tenents;
DROP TABLE IF EXISTS apartments;

CREATE TABLE tenents (
	id SERIAL PRIMARY KEY,
	name TEXT, 
	age INT, 
	gender TEXT, 
	apartment_id INT
);

CREATE TABLE apartments (
	id SERIAL PRIMARY KEY,
	address TEXT,
	monthly_rent TEXT,
	sqft INT,
	num_beds INT,
	num_baths INT
);

-- Tenents table

-- id
-- name
-- age
-- gender
-- apartment_id

-- Apartments table

-- id
-- address
-- monthly_rent
-- sqft
-- num_beds
-- num_baths


