DROP TABLE IF EXISTS apartments;
DROP TABLE IF EXISTS tenants;

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  address TEXT NOT NULL,
  monthly_rent INT NOT NULL,
  sqft INT,
  num_beds INT,
  num_baths INT
);

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT,
  gender TEXT,
  apartment_id INT
)
