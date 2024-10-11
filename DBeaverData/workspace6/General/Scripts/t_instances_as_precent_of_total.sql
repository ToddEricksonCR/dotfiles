--Chris query to get details for one assessmment
select customer_id,vm.instance_id,component_name, 
	ec2_instance_type,observed_cpu_utilization,
	predicted_cpu_utilization_on_recommended_type,
	meancpu
from vmware_cpu_mapping_details_v2 vm
inner join (
	select instance_id, meancpu from (
		SELECT instance_id,avg(data0) AS meancpu, max(data0) AS dailyPeak FROM 
			(
			SELECT unnest(data[1:array_upper(data,1)][1]) data0, instance_id
				FROM predicted_cpu_usage WHERE customer_id =211919
			) AS a0
			GROUP BY instance_id 
	) a
) b
on b.instance_id = vm.instance_id
where customer_id = 211919 and plan_id = 7 order by meancpu desc;


--analysis of the total number of instances and number of t instances in recommended in OLA 2 plans for assessments delivered this month.

select i.customer_id , c.company ,display_name as plan, i.total_instances, i.t_instances, i.t_instances/i.total_instances::float*100 as percent_t
--, c.email
from (
	select d.customer_id , pd.display_name, count(*) as total_instances
	 , count(*) FILTER (WHERE lower(substring(d.ec2_instance_type from 1 for 1)) = 't') AS t_instances
	from vmware_cpu_mapping_details_v2 d
	inner join awsinstances a on a.customerid  = d.customer_id and a.instanceid  = d.instance_id 
	inner join plan_details pd on d.customer_id = pd.customer_id 
		and pd.display_name in('OLA 2 - Workload, On-Demand')--, 'OLA 1 - Hardware')
		and d.plan_id = pd.plan_id
	where a.customerid in(
	211900,
	211985,
	211952,
	212012,
	211955,
	211913,
	212044,
	212011,
	212003,
	211940,
	211875,
	211899,
	211935,
	211755,
	211961,
	211906,
	212002,
	211993,
	211969,
	211919,
	211812,
	212018,
	211838,
	211973,
	211937,
	211941,
	211986,
	211890,
	211821,
	211970,
	211967,
	211892,
	211948)
	--and plan_id = 7
	group by d.customer_id , pd.display_name
) as i
inner join customers c on c.id  = i.customer_id 
order by 1,3



select d.customer_id , pd.display_name, d.ec2_instance_type, d.bottleneck , d.predicted_cpu_utilization_on_recommended_type  -- , d.*
	from vmware_cpu_mapping_details_v2 d
	inner join awsinstances a on a.customerid  = d.customer_id and a.instanceid  = d.instance_id 
	inner join plan_details pd on d.customer_id = pd.customer_id 
		and pd.display_name in('OLA 2 - Workload, On-Demand')--, 'OLA 1 - Hardware')
		and d.plan_id = pd.plan_id
	where a.customerid in(211892)--, 211919, 211937)

select * from vmware_cpu_mapping_details_v2 limit 2
