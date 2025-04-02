BEGIN;

--
-- ACTION CREATE TABLE
--
CREATE TABLE "note" (
    "id" bigserial PRIMARY KEY,
    "name" text NOT NULL,
    "password" text NOT NULL,
    "document" text NOT NULL
);


--
-- MIGRATION VERSION FOR test
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('test', '20250402170122383', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250402170122383', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
