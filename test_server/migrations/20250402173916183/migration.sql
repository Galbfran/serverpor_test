BEGIN;

--
-- ACTION ALTER TABLE
--
ALTER TABLE "task" ALTER COLUMN "end" SET DEFAULT false;
ALTER TABLE "task" ALTER COLUMN "createAt" SET DEFAULT CURRENT_TIMESTAMP;
ALTER TABLE "task" ALTER COLUMN "userId" SET NOT NULL;
ALTER TABLE ONLY "task"
    ADD CONSTRAINT "task_fk_0"
    FOREIGN KEY("userId")
    REFERENCES "user"("id")
    ON DELETE NO ACTION
    ON UPDATE NO ACTION;

--
-- MIGRATION VERSION FOR test
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('test', '20250402173916183', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20250402173916183', "timestamp" = now();

--
-- MIGRATION VERSION FOR serverpod
--
INSERT INTO "serverpod_migrations" ("module", "version", "timestamp")
    VALUES ('serverpod', '20240516151843329', now())
    ON CONFLICT ("module")
    DO UPDATE SET "version" = '20240516151843329', "timestamp" = now();


COMMIT;
