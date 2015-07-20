DROP TABLE IF EXISTS persons;
DROP TABLE IF EXISTS apartments;

CREATE TABLE persons (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INT,
  gender TEXT,
  apartment_id INT
);
