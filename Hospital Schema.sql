CREATE TABLE "doctors" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "department" varchar
);

CREATE TABLE "appointments" (
  "id" integer PRIMARY KEY,
  "doctor_id" integer,
  "patient_id" integer,
  "date" varchar
);

CREATE TABLE "patients" (
  "id" integer PRIMARY KEY,
  "first_name" varchar,
  "last_name" varchar
);

CREATE TABLE "diagnoses" (
  "id" integer PRIMARY KEY,
  "appointment_id" integer,
  "disease_id" integer
);

CREATE TABLE "diseases" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "description" varchar
);

ALTER TABLE "diseases" ADD FOREIGN KEY ("id") REFERENCES "diagnoses" ("disease_id");

ALTER TABLE "appointments" ADD FOREIGN KEY ("patient_id") REFERENCES "patients" ("id");

ALTER TABLE "appointments" ADD FOREIGN KEY ("doctor_id") REFERENCES "doctors" ("id");

ALTER TABLE "appointments" ADD FOREIGN KEY ("id") REFERENCES "diagnoses" ("appointment_id");
