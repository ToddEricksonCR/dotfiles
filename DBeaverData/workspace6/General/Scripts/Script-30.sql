select * from application_data.oracle_database_info odi limit 200
select distinct bundle_name from application_data.oracle_database_info odi 

select id, company, c.email --,c.* 
from customers c 
inner join (
select distinct(customer_id) as customer_id 
from application_data.oracle_database_info odi 
order by customer_id desc limit 20) as b on b.customer_id = c.id 


select count(*) from customers
