select proxy_port, proxy_username, lastupdated, versionfilename, is_available  from vmware_proxy_installers_staging vpis 
where is_available = false 
order by proxy_port ;

select min(proxy_port), max(proxy_port) from vmware_proxy_installers
;

select min(proxy_port) 
from vmware_proxy_installers
where is_available = true 

update vmware_proxy_installers set is_available = false where proxy_port < 12501;