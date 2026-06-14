-- Enable pglogical extension

CREATE EXTENSION pglogical;

-------------------------------------------------

-- Create provider node

SELECT pglogical.create_node(
    node_name := 'pub1',
    dsn := 'host=localhost port=5432 dbname=db1'
);

-------------------------------------------------

-- Create subscriber node

SELECT pglogical.create_node(
    node_name := 'sub1',
    dsn := 'host=localhost port=5433 dbname=db2'
);

-------------------------------------------------

-- Create replication set for DDL

SELECT pglogical.create_replication_set(
    set_name := 'ddl_sql'
);

-------------------------------------------------

-- Create subscription

SELECT pglogical.create_subscription(
    subscription_name := 'sub1_subscription',
    provider_dsn := 'host=localhost port=5432 dbname=db1',
    replication_sets := ARRAY['default','ddl_sql']
);
