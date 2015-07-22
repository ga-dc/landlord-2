DROP TABLE IF EXISTS tenants;

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT,
  gender TEXT,
  apartment_id INT
);

DROP TABLE IF EXISTS apartments;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  address TEXT NOT NULL,
  monthly_rent INT,
  sqft INT,
  num_beds INT,
  num_baths INT
);
