select c.id, c.company , a.number_of_ec2_instances
from
(select customer_id, count(*) as number_of_ec2_instances from migrator.general_machine_info where last_time_updated between '2023-04-01' and '2023-05-01' and  jsonb_data->>'isAgentOnEc2' = 'true' 
group by customer_id ) as a 
inner join customers c on c.id = a.customer_id
