CREATE TABLE "teams" (
  "id" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "players" (
  "id" integer PRIMARY KEY,
  "name" varchar,
  "team_id" varchar
);

CREATE TABLE "referees" (
  "id" integer PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "goals" (
  "id" integer PRIMARY KEY,
  "player_id" integer,
  "game_id" integer
);

CREATE TABLE "games" (
  "id" integer PRIMARY KEY,
  "team1_id" integer,
  "team2_id" integer,
  "referee_id" integer,
  "season_id" integer,
  "date" varchar
);

CREATE TABLE "seasons" (
  "id" integer PRIMARY KEY,
  "start_date" varchar,
  "end_date" varchar
);

CREATE TABLE "game_results" (
  "team1_id" integer,
  "team2_id" integer,
  "result" varchar,
  "game_id" integer,
  "season_id" integer
);

ALTER TABLE "players" ADD FOREIGN KEY ("team_id") REFERENCES "teams" ("id");

ALTER TABLE "teams" ADD FOREIGN KEY ("id") REFERENCES "games" ("team1_id");

ALTER TABLE "teams" ADD FOREIGN KEY ("id") REFERENCES "games" ("team2_id");

ALTER TABLE "referees" ADD FOREIGN KEY ("id") REFERENCES "games" ("referee_id");

ALTER TABLE "goals" ADD FOREIGN KEY ("player_id") REFERENCES "players" ("id");

ALTER TABLE "games" ADD FOREIGN KEY ("id") REFERENCES "goals" ("game_id");

ALTER TABLE "seasons" ADD FOREIGN KEY ("id") REFERENCES "games" ("season_id");

ALTER TABLE "teams" ADD FOREIGN KEY ("id") REFERENCES "game_results" ("team1_id");

ALTER TABLE "teams" ADD FOREIGN KEY ("id") REFERENCES "game_results" ("team2_id");

ALTER TABLE "games" ADD FOREIGN KEY ("id") REFERENCES "game_results" ("game_id");

ALTER TABLE "seasons" ADD FOREIGN KEY ("id") REFERENCES "game_results" ("season_id");
