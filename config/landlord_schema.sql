DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS doctors;

CREATE TABLE patients(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  ailment TEXT,
  favorite_food TEXT,
  doctors_id INT
);

CREATE TABLE doctors(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  specialty TEXT
);
