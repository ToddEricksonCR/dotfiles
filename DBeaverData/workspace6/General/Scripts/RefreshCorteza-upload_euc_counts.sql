select cloudamize_id, customer, count_of_vmware_horizon_systems, count_of_xen_desktop_systems, count_of_citrix_xenapp_systems, count_of_remote_desktop_systems 
from corteza_data.upload_euc_counts uec 
order by cloudamize_id DESC 

select count(*) from corteza_data.upload_euc_counts

truncate table corteza_data.upload_euc_counts
