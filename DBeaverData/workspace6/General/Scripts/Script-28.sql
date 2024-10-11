ALTER TABLE public.vmware_vcenter_system_info ADD tunnel_server_ip inet NULL;

ALTER TABLE public.vmware_vcenter_system_info_modification_history ADD tunnel_server_ip inet NULL;

update public.vmware_vcenter_system_info set tunnel_server_ip = '184.73.183.154' where tunnel_server_ip is null and vcenter_port is not null;


ALTER TABLE public.vmware_vcenter_system_info drop COLUMN tunnel_server_ip;

ALTER TABLE public.vmware_vcenter_system_info_modification_history drop COLUMN tunnel_server_ip;


select * from public.vmware_vcenter_system_info where tunnel_server_ip is null and vcenter_port is not null 

select * from public.vmware_vcenter_system_info where 
 vcenter_port is not null 

update public.vmware_vcenter_system_info set vcenter_port = '12345' where vcenter_id = 'jAVL9Fbg_210232'
 
update public.vmware_vcenter_system_info set tunnel_server_ip = '184.73.183.154' where tunnel_server_ip is null and vcenter_port is not null 
 