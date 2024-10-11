 SELECT 
 			ip AS ipAddress, 
 			dns_names AS dnsName, 
 			a.group_name AS groupName, 
 			a.asset_name AS assetName, 
 			a.host_name AS hostName
 		FROM
    		(SELECT unnest(ip_addresses) as ip, instance_id, host_name, group_name, asset_name, group_id, asset_id FROM machine_info 
    			WHERE 
    				customer_id=210994 
 --					and (:instanceId IS NULL or instance_id=:instanceId)
 					and (asset_id>0)
 --					and ( group_id=0)
 			) as a
 		LEFT JOIN
    			( SELECT ip_address, dns_names, instance_id FROM migrator.dns_names_of_machines WHERE customer_id=:customerId) as b
 		ON a.ip = b.ip_address and a.instance_id=b.instance_id
 		where a.group_id>0 or a.asset_id>0
 		ORDER BY ip
 		
SELECT  asset_id, count(1)  FROM machine_info 
WHERE 
	customer_id=211203 
group by asset_id
 				
SELECT  group_id, count(1)  FROM machine_info 
WHERE 
	customer_id=211203 
group by group_id

select * from machine_info
where customer_id = 211113 
and group_id =0
limit 2000

select * 
FROM machine_info 
WHERE 
	customer_id=210994 and instance_id ='v_UyGLjc6c'
limit 100

SELECT ip_address, dns_names, instance_id FROM migrator.dns_names_of_machines WHERE customer_id=:customerId and ip_address = '10.190.3.9'

select * from awsinstances where customerid = 210994 order by instancename limit 100

 		SELECT 
 			ip AS ipAddress, 
 			dns_names AS dnsName, 
 			a.instance_id AS instanceId, 
 			a.group_name AS groupName, 
 			a.asset_name AS assetName, 
 			a.host_name AS hostName,
 			a.group_id,
 			a.asset_id
 		FROM
    		(SELECT unnest(ip_addresses) as ip, instance_id, host_name, group_name, asset_name, group_id, asset_id FROM machine_info 
    			WHERE 
    				customer_id=:customerId 
 					and (:instanceId IS NULL or instance_id=:instanceId)
 					and (:assetId IS NULL or asset_id=:assetId)
 					and (:groupId IS NULL or group_id=:groupId)
 			) as a
 		LEFT JOIN
    			( SELECT ip_address, dns_names, instance_id FROM migrator.dns_names_of_machines WHERE customer_id=:customerId) as b
 		ON a.ip = b.ip_address and a.instance_id=b.instance_id
 		--where a.group_id>0 or a.asset_id>0
 		ORDER BY ip
 		

 				