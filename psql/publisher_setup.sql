-- =====================================
-- Publisher Setup
-- Database: db1
-- Port: 5432
-- =====================================

-- Create sample table

CREATE TABLE cricketers (
    jersey_no INTEGER PRIMARY KEY,
    name VARCHAR(100),
    country VARCHAR(50),
    total_runs INTEGER
);

-- Insert sample data

INSERT INTO cricketers VALUES
(18,'Virat Kohli','India',24000),
(45,'Rohit Sharma','India',20000),
(10,'Sachin Tendulkar','India',34000),
(7,'MS Dhoni','India',10000);

-- Create publication

CREATE PUBLICATION my_pub
FOR TABLE cricketers;

-- Verify publication

SELECT * FROM pg_publication;

SELECT * FROM pg_publication_tables;
