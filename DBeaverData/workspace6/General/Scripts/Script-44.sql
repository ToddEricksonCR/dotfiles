select site_name, port, app_path, app_pool, physical_path ,*
from web_site_info 
-- where customer_id=210009 and instance_id='v_SzBDSkRh' 
order by site_name,app_path,port

select * from migrator.iis_web_site_info iwsi 
 where customer_id = 211676


select * from machine_info where customer_id = 211676 and instance_id= 'v_lOczSEHK'
select * from awsinstances a where customerid = 211676 and instanceid= 'v_lOczSEHK'
select * from group_details ad where customer_id = 211676 and asset_id = 1031

select * from migrator.grouping_history gh 


select * from migrator.machine_processes_by_cpu 
where customer_id in (211676, 212579, 212593 )
select max(customer_id) from migrator.machine_processes_by_cpu 
select max(customer_id) from machine_info

limit 10
