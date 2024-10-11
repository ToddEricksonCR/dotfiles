select * from csp_details.gcp_instance_types limit 10
select * from csp_details.gcp_compute_pricing gcp 


SELECT
	ip_addresses As ipAddress
FROM
	machine_info
WHERE
	customer_id=:customerId
	and (instance_id=:instanceId OR :instanceId IS NULL)      
	and (asset_id=:assetId OR :assetId IS NULL)      
	and (group_id=:groupId OR :groupId IS NULL)
	and ( instance_id in (
		select 
			instance_id_for_plan 
		from 
		migrator.all_instances(:customerId)
		where 
			instance_id_for_plan is not null
			and instance_id_for_assess is not null
		) or machine_type=3)
		
