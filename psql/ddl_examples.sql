-- =====================================
-- pglogical DDL Replication Examples
-- =====================================

-- Add column

SELECT pglogical.replicate_ddl_command(
    'ALTER TABLE public.cricketers ADD COLUMN player_type TEXT;',
    ARRAY['ddl_sql']
);

-------------------------------------------------

-- Rename column

SELECT pglogical.replicate_ddl_command(
    'ALTER TABLE public.cricketers RENAME COLUMN total_runs TO intr_runs;',
    ARRAY['ddl_sql']
);

-------------------------------------------------

-- Add another column

SELECT pglogical.replicate_ddl_command(
    'ALTER TABLE public.cricketers ADD COLUMN first_class_runs INTEGER;',
    ARRAY['ddl_sql']
);

-------------------------------------------------

-- Drop column

SELECT pglogical.replicate_ddl_command(
    'ALTER TABLE public.cricketers DROP COLUMN player_type;',
    ARRAY['ddl_sql']
);

-------------------------------------------------

-- Create new table

SELECT pglogical.replicate_ddl_command(
    'CREATE TABLE public.test_dummy(id INTEGER);',
    ARRAY['ddl_sql']
);

-------------------------------------------------

-- Add primary key to allow replication

SELECT pglogical.replicate_ddl_command(
    'ALTER TABLE public.test_dummy ADD PRIMARY KEY(id);',
    ARRAY['ddl_sql']
);

-------------------------------------------------

-- Add table to replication set

SELECT pglogical.replication_set_add_table(
    set_name := 'default',
    relation := 'public.test_dummy',
    synchronize_data := true
);

-------------------------------------------------

-- Check replication sets

SELECT * FROM pglogical.replication_set;

SELECT * FROM pglogical.replication_set_table;

-------------------------------------------------

-- Check subscription status

SELECT * FROM pglogical.show_subscription_status();
