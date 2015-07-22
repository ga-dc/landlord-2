DROP TABLE IF EXISTS patients;
DROP TABLE IF EXISTS doctors;

CREATE TABLE apartments(
  id SERIAL PRIMARY KEY,
  apartment_name TEXT,
  address TEXT,
  monthly_rent TEXT,
  sqft TEXT,
  num_beds TEXT,
  num_baths TEXT,
  renters TEXT,
  tenant_id INT
);

CREATE TABLE tenants(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  job TEXT
);
