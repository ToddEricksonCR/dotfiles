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
					'APP#'||display_product_name as environment, 
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
						machine_info mi
					inner join client_process_info cpi on
						cpi.customer_id = mi.customer_id
						and cpi.ignore = false
						and position('client' in cpi.instance_id)= 0
						and cpi.instance_id = mi.instance_id			
					inner join server_process_info spi on
						cpi.server_id = spi.id
						and cpi.customer_id = spi.customer_id			
					where
						mi.customer_id = 211113		
						and (mi.machine_type = 0)
				union all
					select
						spi.display_product_name, 
						spi.display_product_name ||'.'|| spi.process_name as app_id, 
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
						mi.customer_id = 211113
						and mi.machine_type = 0) d
				group by
					app_id, display_application_domain, display_product_name, display_description )as d
			group by
				appId,
				applicationName,
				environment
				
select * 
from client_process_info cpi 
where customer_id = 211113 
and process_name ilike 'ps%'
limit 100
