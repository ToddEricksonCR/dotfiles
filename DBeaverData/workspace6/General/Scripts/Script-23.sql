select * from server_process_info spi limit 20
select * from client_process_info spi limit 20

select * from vmware_vms vv where customer_id = 212160 and vm_name = 'ACESSSERVER' limit 200


select instanceid, instancename, is_deleted_from_ui, disabled_reason , monitorignstatus ,is_visible , is_deleted_from_ui ,* 
from awsinstances 
where 1=1
  --and customerid=211290 
  and disabled_reason = 'An agent is on this VM and only agent data is being used'
order by instancename , instanceid 
limit 5

4
select * from machine_info where customer_id=212160 and instance_id = 'MKpLDLDN_212160.vm-746.212160'

select * from vmware_vms where customer_id = 212160 and vm_name = 'ACESSSERVER';

select * from vmware_onprem_systems where customer_id = 212160 and host_name  = 'ACESSSERVER';

select * from vmware_vms v
inner join vmware_onprem_systems p on p.customer_id = 212160 and v.customer_id = p.customer_id
where v.vm_name = p.host_name;

select v.customer_id ,v.vm_name ,p.host_name ,* 
from vmware_vms v
inner join vmware_onprem_systems p on p.customer_id = 212160 and v.customer_id = p.customer_id
inner join awsinstances a on a.customerid = p.customer_id 
where v.vm_name = p.host_name;

select v.customer_id ,v.vm_name ,p.host_name ,* 
from vmware_vms v
inner join vmware_onprem_systems p on p.customer_id = 212160 and v.customer_id = p.customer_id
inner join awsinstances a on a.customerid = p.customer_id 
where v.vm_name = p.host_name;

select * from vmware_vms limit 200

select * from vmware_host_system_info vhsi 
inner join  hyperv_vm_name_map hvnm on vhsi.customer_id = hvnm.customer_id 
limit 20

