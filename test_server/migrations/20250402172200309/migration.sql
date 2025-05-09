BEGIN;


--
-- MIGRATION VERSION FOR test
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('test', '20250402172200309', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250402172200309', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
