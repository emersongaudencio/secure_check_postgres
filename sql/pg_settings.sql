
-- check backends and disk space and fsm checks 
create or replace function pg_settings() returns setof pg_catalog.pg_settings as $$begin return query(select * from pg_catalog.pg_settings); end$$ language plpgsql security definer; 
revoke all on function pg_settings() from public;

create view pg_settings as select * from pg_settings(); 
revoke all on pg_settings from public;


