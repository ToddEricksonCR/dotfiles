select
				distinct appId,
				applicationName,
				environment,
				string_agg(applicationDescription, ';') as applicationDescription,
				string_agg(applicationType, ';') as applicationType,
				sum(numberOfOutbound) as numberOfOutbound,
				sum(numberOfInbound) as numberOfInbound,
				sum(numberOfInbound) + sum(numberOfOutbound) as totalConnection
			from
				(
				select
					app_id as appId, 
					display_product_name as applicationName, 
					'APP#' || display_product_name as environment, 
					display_description as applicationDescription, 
					display_application_domain as applicationType, 
					sum(outbound) as numberOfOutbound, 
					sum(inbound) as numberOfInbound
				from
					(
					select
						cpi.display_product_name, 
						cpi.display_product_name || '.' || cpi.process_name as app_id, 
						cpi.display_description, 
						cpi.display_application_domain, 
						1 as outbound, 
						0 as inbound
					from 
						machine_info  mi
					inner join client_process_info cpi on
						cpi.customer_id = mi.customer_id
						and cpi.ignore = false
						and position('client' in cpi.instance_id)= 0
						and cpi.instance_id = mi.instance_id			
					inner join server_process_info spi on
						cpi.server_id = spi.id
						and cpi.customer_id = spi.customer_id			
					where
				--		mi.customer_id = ' || in_customer_id || '		
						(mi.machine_type = 0)
				union all
					select
						spi.display_product_name, 
						spi.display_product_name || '.' || spi.process_name as app_id, 
						spi.display_description, 
						spi.display_application_domain, 
						0 as outbound, 
						1 as inbound
					from 
						machine_info mi
					inner join server_process_info spi on
						spi.customer_id = mi.customer_id
						and spi.ignore = false
						and position('server' in spi.instance_id)= 0
						and spi.instance_id = mi.instance_id		
					inner join client_process_info cpi on
						spi.id = cpi.server_id
						and spi.customer_id = cpi.customer_id			
					where
				--		mi.customer_id = ' || in_customer_id || '
						mi.machine_type = 0) d
				group by
					app_id, display_application_domain, display_product_name, display_description )as d
			group by
				appId,
				applicationName,
				environment
limit 200


					select
						cpi.display_product_name, 
						cpi.display_product_name || '.' || cpi.process_name as app_id, 
						cpi.display_description, 
						cpi.display_application_domain, 
						1 as outbound, 
						0 as inbound
					from 
						machine_info  mi
					inner join client_process_info cpi on
						cpi.customer_id = mi.customer_id
						and cpi.ignore = false
						and position('client' in cpi.instance_id)= 0
						and cpi.instance_id = mi.instance_id			
					inner join server_process_info spi on
						cpi.server_id = spi.id
						and cpi.customer_id = spi.customer_id			
					where
				--		mi.customer_id = ' || in_customer_id || '		
						(mi.machine_type = 0)
						limit 200
						
select distinct process_name--, display_product_name, display_description 
from (
		select process_name, display_product_name, display_description 
		from client_process_info cpi
		where ignore_since_duplicate = false
		and process_name  is not null
		and cpi.os_type = 'windows'
		limit 500000) as a

select distinct display_product_name--, display_description 
from (
		select display_product_name--, display_description 
		from client_process_info cpi
		where ignore_since_duplicate = false
		and process_name  is not null
		and cpi.os_type = 'linux'
		and process_name not like 'ora_%'
		and process_name not like 'TempUnix_%'
		and customer_id > 211428
		limit 500000
		) as a

select * 
from client_process_info cpi
where ignore_since_duplicate = false
and process_name  is not null
limit 200

select count(distinct customer_id) from client_process_info cpi

select * from customers c 
where company <> 'DemoCompany'
order by id desc 
limit 100

select * from component_list cl where customer_id = 211751 and instanceid = 'v_GJtHTzUg' limit 2

select * from server_process_info spi limit 200


