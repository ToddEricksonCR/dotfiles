select o.customer_id, c.email, count(*) 
from application_data.oracle_database_info o
join customers c on c.id = o.customer_id 
group by o.customer_id, c.email
order by 3 desc 

select o.customer_id, o.instance_id, "timestamp", previous_timestamp, home_key, base_path, home_path, bundle_name, sid_in_registry, db_name, sid 
, s.*
from application_data.oracle_database_info o
	inner join plan_details pd on o.customer_id = pd.customer_id 
		and pd.display_name in('OLA 2 - Workload, On-Demand')--, 'OLA 1 - Hardware')
	inner join 	vmware_storage_mapping_details s on s.customer_id =o.customer_id and s.plan_id = pd.plan_id 
where awr_report <>'' or statspack_report <>''
  and o.customer_id = 211715
--where statspack_report <>''
limit 10

select * from machine_info a limit 5

select * from daily_peak_for_disk dpfd limit 10
select * from vmware_storage_mapping_details limit 10


select count(*) 
from application_data.oracle_database_info 
where awr_report <>'' or statspack_report <>''

select count(*) 
from application_data.oracle_database_info 
where awr_error  <>'' and statspack_error  <>''

select id, customer_id, instance_id, "timestamp", previous_timestamp, home_key, base_path, home_path, bundle_name, group_name, sid_in_registry, db_name, sid,  awr_error, statspack_error 
, awr_report, statspack_report 
from application_data.oracle_database_info 
where awr_error  <>'' or statspack_error  <>''
limit 20
