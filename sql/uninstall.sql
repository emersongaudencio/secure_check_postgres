
drop schema if exists secure_check_postgres cascade;
do $$ begin raise notice 'you may want to run "drop role monitoring;" as well'; end $$;
