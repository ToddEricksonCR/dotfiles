--This gets the count of Azure Edition systems for each Assessment

select cl.customer_id , c.company , count_of_azure_edition_systems
from (select customer_id, count(*) as count_of_azure_edition_systems
	from component_list 
	where os_details like '%Azure%'
	group by customer_id ) as cl
inner join customers c on c.id  = cl.customer_id 
order by 1


select * 
from component_list 
where os_details like '%Azure%'
limit 200


--This gets the count of Windows 2012 systems for each Assessment

select cl.customer_id , c.company , count_of_azure_edition_systems
from (select customer_id, count(*) as count_of_azure_edition_systems
	from component_list 
	where os_details like '%2012%'
	group by customer_id ) as cl
inner join customers c on c.id  = cl.customer_id 
order by 1

