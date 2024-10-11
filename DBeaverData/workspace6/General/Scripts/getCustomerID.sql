select concat(id, ' (', email, ')'), * from customers c where id in ( 
212208,
            211236
    ) order by id desc limit 100;
   
   

select concat(id, ' (', email, ')'), restricted_country , id, company ,email ,lastupdated , * from customers c where id = 212208

select concat(id, ' (', email, ')'), restricted_country , id, company ,email ,lastupdated , * from customers c where email ilike '%unites%' limit 50  --210949

select concat(id, ' (', email, ')'), * from customers c where name ilike '%Cecabank%' limit 5  --210949

select concat(id, ' (', email, ')'), * from customers c where customerkey ilike '%ff6f8193171%' limit 5  --210949

select concat(id, ' (', email, ')'), * from customers c where company ilike '%cma%' limit 5  --210949

--select * from datasource_metadata dm order by url

select * from customers c where expiration_date > current_date  limit 50  --210949
select * from customers where do_not_delete = true 

select node_count_to_assess , id, company ,email,expiration_date ,is_aws ,is_azure ,is_google, vmware_type, database_key, * 
from customers c 
where 1=1
  and email not ilike 'cancelled%' 
  and expiration_date is not null 
  and restricted_country = 'US' 
  --and database_key = 'VMWARE12'
  and company not ilike '%test%'
  and company not ilike '%demo%'
  --and data_status = 'production_ready'
  --and vmware_type = 3 --vcenter and physical
  and email not ilike '%free%'
  and email not ilike '%evolve%'
  and is_demo = false
  and c.is_azure = true 

  order by expiration_date desc 
  limit 50  --210949

select * from customers where database_key = 'MASTER_VMWARE11' order by id desc limit 5


select cos.*, c.*
from customers c 
inner join customer_onboarding_status cos on c.id = cos.customer_id 
where 1=1
  --and c.is_azure = true 
  --and c.is_aws = true
  --and c.is_google = true
  --and c.database_key = 'CENTRAL_VMWARE1'
--  and isconfigured = 'yes'
 -- and c.data_status = 'production_ready'
  and c.id = 210788
  and email not ilike '%poc%'
  and email not ilike '%test%'
  and company not ilike '%poc%'
  and company not ilike '%test%'
--  order by c.id desc
limit 2

select c.assessment_completion_notification_date, *
from customers c 
where c.database_key = 'CENTRAL_VMWARE1'
order by c.id desc

select * from  customer_onboarding_status cos
where customer_id > (select max(customer_id) - 100 from  customer_onboarding_status cos)
  order by cos.id desc
limit 100
  

select min(id) from customers c where c.database_key = 'MASTER_VMWARE12'

select * from customers c where id > 210890 and id < 211000
  
select * from customers c where id = 211525

select * from customers c 
inner join customer_onboarding_status cos on c.id = cos.customer_id 
where c.database_key = 'MASTER_VMWARE12'
and c.id = 210580


select * from datasource_metadata
select * from iaas_region_details where provider = 'Azure' order by region


select * from customers c 
where raw_database_key = 'GERMANY_RAW1'
order by id desc 
limit 100

select * from customers c 
where raw_database_key ='RAW33'
order by id desc limit 25

select * from datasource_metadata dm 

select var_value from cmz_static_variables where var_name = 'feature_flags' 

select * from users where email = 'demo.user5Dec@cloudreach.com'

select min(id) from customers where database_key = 'MASTER_VMWARE12'

select key, db_type, is_current, is_active, * from datasource_metadata dm 

{"processDataFromTime": "2023-04-20", "processDataUpToTime": "2023-05-19"}

select * from customers where database_key = 'DEMO_DB' limit 200
update customers set expiration_date = '2024-05-13' where id = 212254

select col1, col2, * 
--update t set col1 = col2
from tablename t
where col1 = 'xyz'

select * from customers order by id limit 100

update customers set do_not_delete = true where id=210788

select max(id) from customers c 
update customers set expiration_date = '2099-12-31' where id = 211505
