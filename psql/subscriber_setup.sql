-- =====================================
-- Subscriber Setup
-- Database: db2
-- Port: 5433
-- =====================================

-- Create table structure

CREATE TABLE cricketers (
    jersey_no INTEGER PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    total_runs INTEGER
);

-- Create subscription

CREATE SUBSCRIPTION my_sub
CONNECTION 'host=localhost port=5432 dbname=db1 user=postgres'
PUBLICATION my_pub;

-- Verify subscription

SELECT * FROM pg_subscription;

SELECT * FROM pg_stat_subscription;
