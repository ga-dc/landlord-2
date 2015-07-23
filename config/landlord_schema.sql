DROP TABLE IF EXISTS persons;

DROP TABLE IF EXISTS apartments;


CREATE TABLE persons(
  id SERIAL PRIMARY KEY,
  name TEXT,
  age TEXT,
  gender TEXT,
  apartment_id INT
);

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  address TEXT,
  monthly_rent TEXT,
  sqft TEXT,
  num_beds TEXT,
  num_baths TEXT
)
