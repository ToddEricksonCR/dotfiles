--Cooked DB
select customer_id, c.company , instance_id, vm_name, plan_id, region, deployment_type, storage_type, storage_capacity_gb, deduplication_percent, effective_storage_capacity_gb, observed_throughput_mbps, provisioned_throughput_mbps, backup_storage_gb, fsx_annual_cost, compute_annual_cost, storage_annual_cost, total_instance_annual_cost, savings 
from fsx_mapping_details f
inner join  customers c on c.id = f.customer_id
where plan_id =7 and customer_id = 211762
order by 4

--totals  --This is used for the bi-weekly report
select f.customer_id , c.company , effective_storage_capacity_gb,  provisioned_throughput_mbps, fsx_annual_cost, compute_annual_cost, storage_annual_cost, total_instance_annual_cost, savings
from (
	select f.customer_id, sum(effective_storage_capacity_gb) as effective_storage_capacity_gb, sum(provisioned_throughput_mbps) as provisioned_throughput_mbps, sum(fsx_annual_cost) as fsx_annual_cost, sum(compute_annual_cost) as compute_annual_cost, sum(storage_annual_cost) as storage_annual_cost, sum(total_instance_annual_cost) as total_instance_annual_cost, sum(savings) as savings
	from fsx_mapping_details f
	inner join plan_details pd on f.customer_id = pd.customer_id 
		and pd.display_name in('OLA 2 - Workload, On-Demand')--, 'OLA 1 - Hardware')
		and f.plan_id = pd.plan_id
	group by f.customer_id
) as f
inner join customers c on c.id  = f.customer_id 
order by f.customer_id 


--GRAND totals
select  effective_storage_capacity_gb,  provisioned_throughput_mbps, fsx_annual_cost, compute_annual_cost, storage_annual_cost, total_instance_annual_cost, savings
from (
	select count(*), sum(effective_storage_capacity_gb) as effective_storage_capacity_gb, avg(provisioned_throughput_mbps) as provisioned_throughput_mbps, sum(fsx_annual_cost) as fsx_annual_cost, sum(compute_annual_cost) as compute_annual_cost, sum(storage_annual_cost) as storage_annual_cost, sum(total_instance_annual_cost) as total_instance_annual_cost, sum(savings) as savings
	from fsx_mapping_details f
	inner join plan_details pd on f.customer_id = pd.customer_id 
		and pd.display_name in('OLA 2 - Workload, On-Demand')--, 'OLA 1 - Hardware')
		and f.plan_id = pd.plan_id
) as f
inner join customers c on c.id  = f.customer_id 



select id, customer_id, instance_id, group_id, group_name, asset_id, asset_name, component_id, component_name, vcenter_id, data_center_id, data_center_name, resource_pool_id, resource_pool_name, vm_id, vm_name, plan_id, is_windows_onprem, is_linux_onprem, is_vmware, is_hyperv, is_ec2, region, deployment_type, storage_type, storage_capacity_gb, deduplication_percent, effective_storage_capacity_gb, observed_throughput_mbps, provisioned_throughput_mbps, backup_storage_gb, fsx_annual_cost, compute_annual_cost, storage_annual_cost, total_instance_annual_cost, savings  from fsx_mapping_details fmd 


select customer_id, c.company , count(instance_id)
from fsx_mapping_details f
inner join  customers c on c.id = f.customer_id
where plan_id =1 --and customer_id = 211762
group by customer_id, c.company
order by 1 desc



select customerid, instanceid, data[3] as throughput_byptes_per_second from daily_peak_shared_disk_throughput order by data[3] desc 
limit 200

select distinct(tag) from  daily_peak_shared_disk_throughput limit 200

select count(distinct(customerid)) from daily_peak_shared_disk_throughput 



select count(*) from awsinstances a 
where platform='WINDOWS' and is_visible = true
and customerid >= 211688
and customerid in (211688, 211689, 211728, 211735, 211737, 211743, 211744, 211751, 211752, 211755, 211762, 211763, 211764, 211768, 211769, 211770, 211773, 211810, 211811, 211812, 211813, 211815, 211818, 211821, 211825, 211826, 211828, 211833, 211840, 211841, 211870, 211871, 211873, 211874, 211879)
limit 10

--Raw db
select distinct(customer_id) from co_win_smb_server_shares_data 
order by 1
where read_bytes_per_sec > 8388608 --0

select * from co_win_smb_server_shares_data limit 10

--select count(distinct(instance_id)) from co_win_process_data cwpd where customer_id in (select distinct(customer_id) from co_win_smb_server_shares_data 
--where read_bytes_per_sec > 0)

select STRING_AGG(distinct(customer_id)::varchar(6), ', ') 
from co_win_smb_server_shares_data
where read_bytes_per_sec > 0

select count(distinct(instance_id)) from co_win_smb_server_shares_data where read_bytes_per_sec >8388608 --0

select * from co_win_smb_server_shares_data where read_bytes_per_sec >0 limit 200

select count(distinct(customer_id)) from (
select customer_id, instance_id, max(read_bytes_per_sec)/1024/1024 as MiB
from co_win_smb_server_shares_data where read_bytes_per_sec >0 
group by customer_id, instance_id
order by 3 desc
limit 200 ) as a 

--Summary Count
select c.id, c.company ,*
from customers c 
where id in (211566, 211737, 211743, 211744, 211762, 211763, 211764, 211768, 211769, 211773, 211811, 211813, 211825, 211826, 211827, 211833, 211840, 211874, 211889
)


select * from customers c 
inner join customer_onboarding_status cos on c.id = cos.customer_id 
where c.id in (211734, 211819, 211756, 211828, 211744, 211826, 211833, 211743, 211755)

(211688, 211689, 211728, 211735, 211737, 211743, 211744, 211751, 211752, 211755, 211762, 211763, 211764, 211768, 211769, 211773, 211774, 211810, 211811, 211812, 211813, 211815, 211818, 211825, 211826, 211828)

select * from customer_onboarding_status limit 20

select * from aws_fsx_pricing
where file_system_type = 'Windows' and region = 'us-east-1' and deployment_option  = 'Single-AZ' --and storage_type ='SSD'