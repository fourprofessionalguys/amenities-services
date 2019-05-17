DROP DATABASE IF EXISTS "airbnb-clone";
CREATE DATABASE "airbnb-clone";

\c "airbnb-clone";

CREATE TABLE listings (
  id uuid UNIQUE DEFAULT uuid_generate_v4 (),
  title VARCHAR(60) NOT NULL,
  PRIMARY KEY (id)
);


CREATE TABLE amenities (
  id uuid UNIQUE DEFAULT uuid_generate_v4 (),
  name VARCHAR(40),
  photo_url TEXT,
  PRIMARY KEY (id)
);

CREATE TABLE listing_amenities (
  id uuid UNIQUE DEFAULT uuid_generate_v4 (),
  listing_id uuid REFERENCES listings (id),
  amenities_id uuid REFERENCES amenities (id),
  PRIMARY KEY (id)
);