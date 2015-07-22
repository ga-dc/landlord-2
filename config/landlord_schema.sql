DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age TEXT NOT NULL,
  gender TEXT,
  doctor_id INT
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  address TEXT NOT NULL,
  monthly_rent TEXT NOT NULL,
  sqft TEXT NOT NULL,
  num_beds TEXT NOT NULL,
  num_baths TEXT NOT NULL
);
