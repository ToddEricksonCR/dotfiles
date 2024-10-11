--This query gets all of the Windows processes.  For Windows processes, Analytics does not set the lastupdated field
select application_display_name , vendor_display_name , count(*)
from migrator.installed_applications ia 
where last_updated is null and vendor_display_name is not null
group by application_display_name , vendor_display_name 
order by 3 desc

--This query gets the count of Customers with Windows systems
select count(distinct customer_id)
from migrator.installed_applications ia 
where last_updated is null and vendor_display_name is not null

--This query gets the count of instances with Windows Systems
select count(distinct instance_id)
from migrator.installed_applications ia 
where last_updated is null and vendor_display_name is not null


--This query gets all of the Linux processes.  For Linux processes, Analytics sets the lastupdated field
select application_display_name , vendor_display_name ,versions[1] as version, count(*)
from migrator.installed_applications ia 
where last_updated is not null and vendor_display_name is not null
group by application_display_name , vendor_display_name ,versions[1]
order by 4 desc
limit 1000




select mpbc.process_name, count(*)
from migrator.machine_processes_by_cpu mpbc  
inner join awsinstances a on a.instanceid = mpbc.instance_id  and a.customerid  = mpbc.customer_id and a.platform = 'LINUX'
group by mpbc.process_name
order by 2 desc
limit 200

select versions[1] as version, * 
from migrator.installed_applications ia 
inner join awsinstances a on a.instanceid = ia.instance_id  and a.customerid  = ia.customer_id and a.platform = 'LINUX'
limit 200


