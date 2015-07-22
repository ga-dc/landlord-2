-- Delete tenants table if a copy exists.
DROP TABLE IF EXISTS tenants;
-- Delete apartments table if a copy exists.
DROP TABLE IF EXISTS apartments;

-- Create tenants table.
CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  age INT NOT NULL,
  gender TEXT NOT NULL,
  apartment_id INT
);

-- Create aartments table.
CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  address TEXT NOT NULL,
  monthly_rent INT NOT NULL,
  sqft INT NOT NULL,
  num_beds INT NOT NULL,
  num_baths INT NOT NULL
);