SELECT 
			a.group_id as client_group_id_intermediate,
			a.group_name as client_group_name_intermediate,
			a.asset_id as client_asset_id_intermediate,
			a.asset_name as client_asset_name_intermediate,
			a.instance_id as client_instance_id_intermediate,
			a.host_name as client_instance_name_intermediate,
			coalesce(a.client_process_name, a.process_name) as client_process_name_intermediate,
			b.group_id as server_group_id_intermediate,
			b.group_name as server_group_name_intermediate,
			b.asset_id as server_asset_id_intermediate,
			b.asset_name as server_asset_name_intermediate,
			b.instance_id as server_instance_id_intermediate,
			b.host_name as server_instance_name_intermediate,
			coalesce(b.server_process_name, b.process_name) as server_process_name_intermediate,
			b.port as server_port
		FROM
			(SELECT * FROM
		      (SELECT instance_id, client_process_name, process_name, server_id FROM client_process_info WHERE customer_id=211083 AND position('client' in instance_id)=0 AND ignore_since_duplicate=false) as s
		     	RIGHT JOIN
		      (SELECT instance_id as machine_info_instance_id, host_name, asset_id, asset_name, group_id, group_name, machine_type from machine_info  WHERE customer_id=211083 AND (machine_type=0 OR machine_type=3)) as t
		      on s.instance_id=t.machine_info_instance_id
			  ) as a
			LEFT JOIN
			(SELECT * FROM
			   (SELECT instance_id, server_process_name, process_name, id, listening_port as port FROM server_process_info WHERE customer_id=211083 AND position('server' in instance_id)=0 AND ignore_since_duplicate=false) as ss
				 RIGHT JOIN
			   (SELECT instance_id as machine_info_instance_id, host_name, asset_id, asset_name, group_id, group_name, machine_type from machine_info  WHERE customer_id=211083) as tr
				 on ss.instance_id=tr.machine_info_instance_id
			    ) as b
			 ON a.server_id = b.id
		WHERE 
			(b.machine_type = 0 or b.machine_type = 2 or b.machine_type = 3);
		
SELECT instance_id, server_process_name, process_name, id,* FROM server_process_info WHERE customer_id=211083 AND position('server' in instance_id)=0 AND ignore_since_duplicate=false
			
		