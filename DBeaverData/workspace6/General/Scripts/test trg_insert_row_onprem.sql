select * from customer_systems cs 
order by id desc
limit 10

--max id on 2/27 59556


SELECT 
    trg.tgname AS trigger_name,
    tbl.relname AS table_name,
    ns.nspname AS schema_name
FROM 
    pg_trigger trg
JOIN 
    pg_class tbl ON trg.tgrelid = tbl.oid
JOIN 
    pg_namespace ns ON tbl.relnamespace = ns.oid
JOIN 
    pg_proc pr ON trg.tgfoid = pr.oid
WHERE 
    pr.proname = 'trg_insert_row_onprem';