select customer_id, instance_id, region, deployment_type, desired_storage_capacity_gb, 
percentage_of_data_on_ssd_storage, savings_from_compression_deduplication, 
read_requests_to_capacity_pool_storage, write_requests_to_capacity_pool_storage, 
desired_aggregate_ssd_iops, desired_aggregate_throughput_mibps, backup_storage_gb, 
snaplock_storage_gb, annual_cost_ssd_storage_capacity, annual_cost_capacity_pool_storage_capacity, 
annual_cost_capacity_pool_read_write_requests, annual_cost_throughput_capacity, 
annual_cost_additional_ssd_iops, annual_cost_backup_storage, annual_snaplock_licensing, total_annual_cost 
from fsx_for_netapp_ontap_mapping_details