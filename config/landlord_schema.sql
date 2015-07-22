DROP TABLE IF EXISTS tenants;
DROP TABLE IF EXISTS appartments;

CREATE TABLE tenants (
  id SERIAL PRIMARY KEY,
  name              TEXT,
  age               TEXT,
  gender            TEXT,
  appartment_id     INT
);

CREATE TABLE appartments (
  id SERIAL PRIMARY KEY,
  address           TEXT,
  monthly_rent      INT,
  sqft              INT,
  num_beds          INT,
  num_baths         INT
);
