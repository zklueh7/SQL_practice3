-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic_zoey;

CREATE DATABASE air_traffic_zoey;

\c air_traffic_zoey

CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  passenger_id INTEGER,
  seat TEXT NOT NULL,
  flight_id INTEGER NOT NULL,
);

CREATE TABLE passengers
(
  id SERIAL PRIMARY KEY,
  first_name TEXT NOT NULL,
  last_name TEXT NOT NULL
);

CREATE TABLE flights
(
  departure TIMESTAMP NOT NULL,
  arrival TIMESTAMP NOT NULL,
  airline TEXT NOT NULL,
  from_city TEXT NOT NULL,
  from_country TEXT NOT NULL,
  to_city TEXT NOT NULL,
  to_country TEXT NOT NULL
);
