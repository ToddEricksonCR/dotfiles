
select c.id , c.company 
	, COALESCE(count_of_VMwareHorizon_systems,0) as count_of_VMwareHorizon_systems
	, COALESCE(count_of_XenDesktop_systems,0) as count_of_XenDesktop_systems
	, COALESCE(count_of_Citrix_XenApp_systems,0) as count_of_Citrix_XenApp_systems
	, COALESCE(count_of_RemoteDesktop_systems,0) as count_of_RemoteDesktop_systems
from customers c 
left join (select customer_id, count(distinct instance_id) as count_of_VMwareHorizon_systems
	from migrator.installed_applications ia 
	where application_display_name ilike '%VMware Horizon%' and customer_id = '211285'
	group by customer_id ) as vm on c.id  = vm.customer_id 
left join (select customer_id, count(distinct instance_id) as count_of_XenDesktop_systems
	from migrator.installed_applications ia 
	where application_display_name ilike '%XenDesktop%' and vendor_display_name = 'Citrix Systems' and customer_id = '211285'
	group by customer_id ) as xd on c.id  = xd.customer_id 
left join (select customer_id, count(distinct instance_id) as count_of_Citrix_XenApp_systems
	from migrator.installed_applications ia 
	where application_display_name ilike '%Citrix XenApp%' and customer_id = '211285'
	group by customer_id ) as ci on c.id  = ci.customer_id 
left join (select customer_id, count(distinct instance_id) as count_of_RemoteDesktop_systems
	from migrator.installed_applications ia 
	where application_display_name ilike '%Remote Desktop%' and customer_id = '211285'
	group by customer_id ) as rdp on c.id  = rdp.customer_id 
where count_of_VMwareHorizon_systems is not null 
	or count_of_XenDesktop_systems is not null 
	or count_of_Citrix_XenApp_systems is not null 
	or count_of_RemoteDesktop_systems is not null 
	and c.id = '211285'

	
	
select *
		from migrator.installed_applications ia 
	where application_display_name ilike '%Citrix XenApp%' limit 20
	