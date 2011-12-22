
-- check wal
create or replace function pg_ls_dir(text) returns setof text as $$begin return query(select pg_catalog.pg_ls_dir('pg_xlog')); end$$ language plpgsql security definer;
revoke all on function pg_ls_dir(text) from public;


