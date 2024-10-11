--Details
select c.id, c.company, 
	case 
		when jsonb_data->'cloudProviderInfo'->>'instanceId' is not null then jsonb_data->'cloudProviderInfo'->>'instanceId' 
		when jsonb_data->>'cloudInstanceId' is not null then jsonb_data->>'cloudInstanceId' 
	end as instance_id, a2.instancename--, jsonb_data->>'cloudInstanceType' as InstanceType, a2.platform--, *
from migrator.general_machine_info a
inner join customers c on c.id = a.customer_id
inner join awsinstances a2 on a2.instanceid =a.instance_id 
where jsonb_data->>'isAgentOnEc2' = 'true' 
  and c.id not in (211400,211763,211458,211360,211083,212096,211365,211154,211434,211926,211550,211595,211526,211403,211551
                  ,211092,212129,212208,212240,212564,212507,212479,212506,212572,212786) 
order by customer_id

