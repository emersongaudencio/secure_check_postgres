show search_path;

-- check disk space
create or replace function pg_tablespace() returns setof pg_catalog.pg_tablespace as $$begin return query(select spcname, null::oid, spclocation, null::aclitem[]  FROM pg_catalog.pg_tablespace WHERE spclocation <> ''); end$$ language plpgsql security definer; 
revoke all on function pg_tablespace() from public;

create view pg_tablespace as select * from pg_tablespace(); 
revoke all on pg_tablespace from public;


