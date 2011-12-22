
-- check backends
create or replace function pg_stat_activity() returns setof pg_catalog.pg_stat_activity as $$begin return query(select * from pg_catalog.pg_stat_activity); end$$ language plpgsql security definer; 
revoke all on function pg_stat_activity() from public;

create view pg_stat_activity as select * from pg_stat_activity(); 
revoke all on pg_stat_activity from public;

