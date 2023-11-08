CREATE TABLE "posts" (
  "id" integer PRIMARY KEY,
  "title" varchar,
  "text" varchar,
  "user_id" integer,
  "location" varchar,
  "region" varchar
);

CREATE TABLE "users" (
  "id" integer PRIMARY KEY,
  "username" varchar,
  "preferred_region" varchar
);

CREATE TABLE "categories" (
  "id" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "post_categories" (
  "id" integer PRIMARY KEY,
  "post_id" integer,
  "category_id" integer
);

ALTER TABLE "posts" ADD FOREIGN KEY ("user_id") REFERENCES "users" ("id");

ALTER TABLE "post_categories" ADD FOREIGN KEY ("post_id") REFERENCES "posts" ("id");

ALTER TABLE "categories" ADD FOREIGN KEY ("id") REFERENCES "post_categories" ("category_id");
