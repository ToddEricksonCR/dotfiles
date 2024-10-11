SELECT n.nspname, c.relname, count(*) AS buffers
 FROM pg_buffercache b JOIN pg_class c
 ON b.relfilenode = pg_relation_filenode(c.oid) /*AND
    b.reldatabase IN (0, (SELECT oid FROM pg_database
                          WHERE datname = current_database())) */
 JOIN pg_namespace n ON n.oid = c.relnamespace and n.nspname not like 'pg_%'
 GROUP BY n.nspname, c.relname
 ORDER BY 3 DESC
 LIMIT 100;
             
CREATE EXTENSION pg_buffercache;

select * from pg_buffercache pb 

select * from pg_class limit 100

select * from vmware_realtime_vm_vdisk_number_read_average limit 10

