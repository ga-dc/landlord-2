DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS apartments;

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name TEXT,
  age INT,
  gender TEXT,
  apartment_id INT
);

CREATE TABLE apartments (
  id SERIAL PRIMARY KEY,
  address TEXT,
  monthly_rent INT, 
  sqft INT,
  num_beds INT,
  num_baths INT
);

-- - Tenants table (with the follow attributes):
--   - id
--   - name
--   - age
--   - gender
--   - apartment_id
--
-- - Apartments table (with the follow attributes):
--   - id
--   - address
--   - monthly_rent
--   - sqft
--   - num_beds
--   - num_baths
