
-- check fsm pages|relations
-- NOTE:: If you have installed pg_freespacemap contrib tools in a non-default schema, you will need to adjust the paths used in the function below

create or replace function pg_freespacemap_relations() 
returns setof public.pg_freespacemap_relations
as $$
	select null::oid, null::oid, relfilenode, avgrequest, interestingpages, null::int, null::int from public.pg_freespacemap_relations;
$$
language sql
security definer;
revoke all on function pg_freespacemap_relations() from public;

create or replace view pg_freespacemap_relations as select * from pg_freespace_map_relations();
revoke all on pg_freespacemap_relations from public;


