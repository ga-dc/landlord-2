DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT NOT NULL,
  gender  INT NOT NULL,
  apartment_ID  INT
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  address   TEXT NOT NULL,
  monthly_rent INT NOT NULL,
  sqft INT NOT NULL,
  numb_beds INT NOT NULL,
  num_baths  INT NOT NULL
);
