select distinct instance_id, customer_id, display_name, display_version, publisher
from co_win_installed_programs_data
--where processedstate is not null
limit 20

select count(*)-- instance_id, customer_id, display_name, display_version, publisher
from co_win_installed_programs_data
--where processedstate is not null
limit 200

SELECT * FROM pg_class where relname = 'co_win_installed_programs_data';

SELECT c.reltuples::bigint AS estimate
FROM   pg_class c
JOIN   pg_namespace n ON n.oid = c.relnamespace
WHERE  c.relname = 'co_win_installed_programs_data'
AND    n.nspname = 'public';

select * from process_name_details
limit 200

SELECT (CASE WHEN c.reltuples < 0 THEN NULL       -- never vacuumed
             WHEN c.relpages = 0 THEN float8 '0'  -- empty table
             ELSE c.reltuples / c.relpages END
     * (pg_catalog.pg_relation_size(c.oid)
      / pg_catalog.current_setting('block_size')::int)
       )::bigint
FROM   pg_catalog.pg_class c
WHERE  c.oid = 'public.co_win_installed_programs_data'::regclass;      -- schema-qualified table here


analyze public.co_win_installed_programs_data;

