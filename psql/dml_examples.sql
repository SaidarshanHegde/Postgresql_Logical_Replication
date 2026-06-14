-- =====================================
-- Native PostgreSQL DML Replication
-- Examples
-- =====================================

-- View publication

SELECT * FROM pg_publication;

SELECT * FROM pg_publication_tables;

-------------------------------------------------

-- View subscription

SELECT * FROM pg_subscription;

SELECT * FROM pg_stat_subscription;

-------------------------------------------------

-- INSERT

INSERT INTO cricketers
VALUES (
    95,
    'B Kumar',
    'India',
    5000
);

-------------------------------------------------

-- UPDATE

UPDATE cricketers
SET total_runs = 5500
WHERE jersey_no = 95;

-------------------------------------------------

-- DELETE

DELETE FROM cricketers
WHERE jersey_no = 95;

-------------------------------------------------

-- INSERT Multiple Rows

INSERT INTO cricketers VALUES
(20,'Ben Stokes','England',4000),
(15,'Hardik Pandya','India',3000);

-------------------------------------------------

-- UPDATE Multiple Rows

UPDATE cricketers
SET total_runs = total_runs + 1000
WHERE country = 'India';

-------------------------------------------------

-- TRUNCATE

TRUNCATE TABLE cricketers;

-------------------------------------------------

-- Verify Data

SELECT * FROM cricketers;

-------------------------------------------------

-- Monitor Replication

SELECT * FROM pg_stat_replication;

SELECT * FROM pg_stat_subscription;

-------------------------------------------------

-- Check Replication Slot

SELECT * FROM pg_replication_slots;
