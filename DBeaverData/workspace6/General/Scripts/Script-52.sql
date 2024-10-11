SELECT *
FROM server_process_info spi
WHERE customer_id = 211519
  AND instance_id = 'v_7GoxxoYp'
  AND process_name = 'DistributedCacheService.exe'
  AND parent_process_name = 'services.exe'
  AND process_cmdline = '"c:\Program Files\AppFabric 1.1 for Windows Server\DistributedCacheService.exe"'
  AND parent_process_cmdline = 'C:\Windows\system32\services.exe'
  AND display_product_name = 'AppFabric Caching Service';
  
 SELECT *
FROM server_process_info spi
WHERE customer_id = 211519
  AND instance_id = 'v_iKVAyaRc'
  AND process_name = 'lsass.exe'
  AND parent_process_name = 'wininit.exe'
  AND process_cmdline = 'C:\Windows\system32\lsass.exe'
  AND parent_process_cmdline = 'wininit.exe'
  AND display_product_name = 'Active Directory';
  