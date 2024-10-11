select * 
from migrator.installed_applications ia 
--where application_display_name  ilike 'Citrix XenApp%' 
--and customer_id = '211285'
--order by 3
where ia.application_display_name is null
limit 200

select * 
from migrator.installed_applications ia 
where ((application_display_name  ilike '%XenDesktop%' and vendor_display_name = 'Citrix Systems')
or (application_display_name ilike '%VMware Horizon%')
or (application_display_name ilike '%Citrix XenApp%')
or (application_display_name ilike '%Remote Desktop%'))
and customer_id = '211751'
order by 3
limit 200



select c.id , c.company 
	, COALESCE(count_of_VMwareHorizon_systems,0) as count_of_VMwareHorizon_systems
	, COALESCE(count_of_XenDesktop_systems,0) as count_of_XenDesktop_systems
	, COALESCE(count_of_Citrix_XenApp_systems,0) as count_of_Citrix_XenApp_systems
	, COALESCE(count_of_RemoteDesktop_systems,0) as count_of_RemoteDesktop_systems
from customers c 
left join (select customer_id, count(distinct instance_id) as count_of_VMwareHorizon_systems
	from migrator.installed_applications ia 
	where application_display_name ilike '%VMware Horizon%'
	group by customer_id ) as vm on c.id  = vm.customer_id 
left join (select customer_id, count(distinct instance_id) as count_of_XenDesktop_systems
	from migrator.installed_applications ia 
	where application_display_name ilike '%XenDesktop%' and vendor_display_name = 'Citrix Systems'
	group by customer_id ) as xd on c.id  = xd.customer_id 
left join (select customer_id, count(distinct instance_id) as count_of_Citrix_XenApp_systems
	from migrator.installed_applications ia 
	where application_display_name ilike '%Citrix XenApp%'
	group by customer_id ) as ci on c.id  = ci.customer_id 
left join (select customer_id, count(distinct instance_id) as count_of_RemoteDesktop_systems
	from migrator.installed_applications ia 
	where application_display_name ilike '%Remote Desktop%'
	group by customer_id ) as rdp on c.id  = rdp.customer_id 
where count_of_VMwareHorizon_systems is not null 
	or count_of_XenDesktop_systems is not null 
	or count_of_Citrix_XenApp_systems is not null 
	or count_of_RemoteDesktop_systems is not null 
	
	SELECT 
    c.id, 
    c.company, 
    COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%VMware Horizon%' THEN 1 ELSE 0 END), 0) AS count_of_VMwareHorizon_systems,
    COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%XenDesktop%' AND ia.vendor_display_name = 'Citrix Systems' THEN 1 ELSE 0 END), 0) AS count_of_XenDesktop_systems,
    COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%Citrix XenApp%' THEN 1 ELSE 0 END), 0) AS count_of_Citrix_XenApp_systems,
    COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%Remote Desktop%' THEN 1 ELSE 0 END), 0) AS count_of_RemoteDesktop_systems
FROM 
    customers c
LEFT JOIN 
    migrator.installed_applications ia ON c.id = ia.customer_id
GROUP BY 
    c.id, c.company
HAVING 
    COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%VMware Horizon%' THEN 1 ELSE 0 END), 0) > 0 OR
    COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%XenDesktop%' AND ia.vendor_display_name = 'Citrix Systems' THEN 1 ELSE 0 END), 0) > 0 OR
    COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%Citrix XenApp%' THEN 1 ELSE 0 END), 0) > 0 OR
    COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%Remote Desktop%' THEN 1 ELSE 0 END), 0) > 0;

select * from migrator.get_customer_euc_counts();
select * from  migrator.customer_euc_counts 


SELECT * FROM pg_extension WHERE extname = 'pg_cron';

SELECT extname FROM pg_extension WHERE extname = 'postgres_fdw';

SELECT dblink_get_connections();

SELECT port,db_name,username,password,ip_address,dbcluster_ip1,dbcluster_ip2,dbcluster_ip3, * 
FROM datasource_metadata WHERE db_type = 'ESTIMATOR' and db_name = 'vmware' AND is_active=true

SELECT region, 
'host='||quote_nullable(ip_address)||' dbname=''vmware'' user='||quote_nullable(username)||' password='||quote_nullable(password) as dblink_str
FROM datasource_metadata WHERE db_type = 'ESTIMATOR' and db_name = 'vmware' AND is_active=true 

DECLARE
 	q text dblink_str text;
q='select id from customer limit 10' 
dblink_str = 'host=''10.1.134.101'' dbname=''vmware'' user=''postgres'' password=''qy8VSv67xeAywm'''
SELECT *
    FROM dblink('host=''10.1.86.104'' dbname=''vmware'' user=''postgres'' password=''qy8VSv67xeAywm''', 
    'select id from customers limit 10' ) as t1(id int)
