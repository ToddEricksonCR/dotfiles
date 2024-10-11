-_From Cooked
--get customers with FSX
select STRING_AGG(distinct(customer_id)::varchar(6), ', ') 
from fsx_mapping_details

--get count of all Windows machines for above customers
select count(*) as total_number_of_windows_machines from awsinstances a 
where platform='WINDOWS' and is_visible = true
and customerid in (select distinct(customer_id) 
	from fsx_mapping_details) 

--get number of machines with FSX recommendations 83 on 8/29
select count(distinct component_id)
from fsx_mapping_details where plan_id = 3
limit 10

--Summary Count 19 on 8/29
select c.id, c.company ,*
from customers c 
where id in (select distinct(customer_id) 
	from fsx_mapping_details) 

select c.id, c.company ,*
from customers c 
where id in (select distinct(customer_id) 
	from fsx_mapping_details) 

************************
--From RAW_DB