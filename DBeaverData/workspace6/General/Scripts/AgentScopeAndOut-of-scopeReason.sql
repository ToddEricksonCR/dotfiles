--Gets Agent Status and out-of-scope reason
SELECT aws.instanceid,aws.instancename,CASE WHEN aws.is_visible THEN 'True' ELSE 'False' END as in_scope,disabled_reason,CASE WHEN ast.instance_id IS NOT NULL THEN 'True' ELSE 'False' END AS is_agent
     	,last_upload_date AS last_agent_upload,watchdog_status AS agent_status,coalesce(detailed_agent_raw_data_status->'workloadMappingData'->>'numberOfDaysWithSufficientData','0') as numDaysData
FROM awsinstances aws
LEFT JOIN node_data_collection_status dcs
ON aws.customerid = dcs.customer_id
	AND aws.instanceid = dcs.instance_id_of_agent
LEFT JOIN agent_status2(211417) ast
ON aws.instanceid = ast.instance_id
WHERE aws.customerid = 211417