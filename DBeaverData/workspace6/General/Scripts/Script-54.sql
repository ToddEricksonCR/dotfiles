SELECT * FROM co_win_ms_sql_info_v2
where customer_id = 212647
  and other_info !='' 
--  and other_info like '%"dbEngineEdition": "En%'
  and cluster_name <>''
  and instance_id in ('v_RPkiFzdQ','v_AnGpiSQH')
--  and other_info not like '%"clusterQuorumType": "NotApplicable"%'
limit 10

select other_info from co_win_processor_cpuinfo where customer_id=212601 and instance_id='v_4yI3E959' order by timestamp

E:~Disk #1, Partition #0~basic|~Disk #1, Partition #1~basic|~Disk #0, Partition #0~basic|C:~Disk #0, Partition #1~basic|~Disk #0, Partition #2~basic|G:~Disk #3, Partition #0~basic|~Disk #3, Partition #1~basic|F:~Disk #2, Partition #0~basic|~Disk #2, Partition #1~basic^|EFI~\Device\HarddiskVolume1\EFI\Microsoft\Boot\BCD^|^|C:\~\\?\Volume{1dfc48ae-8371-45a7-a3d6-7f456b01160d}\~NTFS~~True~False~96511979520~55842074624|E:\~\\?\Volume{60ce2c63-c7be-4a89-8992-c298a83a24d1}\~NTFS~New Volume~False~False~85880467456~43520249856|F:\~\\?\Volume{9da1115e-4656-4350-9c21-1885274aaa72}\~NTFS~New Volume~False~False~16087248896~12305940480|G:\~\\?\Volume{cdaa5965-215d-45b2-89e9-02a26f0ffc33}\~NTFS~New Volume~False~False~10718539776~10582155264|\\?\Volume{ef86496a-265e-47a9-8061-f32b3ef12718}\~\\?\Volume{ef86496a-265e-47a9-8061-f32b3ef12718}\~FAT32~~False~~100663296~70149120|D:\~\\?\Volume{990fece5-69dd-11ed-a4ad-806e6f6e6963}\~~~~~~^|4.0.0.0|4.8.04161^|^|^|^|VMware-42 03 6f ff db 02 7e 7b-f5 14 24 75 fe 23 bd c7~INTEL  - 6040000^|~|4.8.4718.0~4.8.4718.0^|^|8190^|42036FFF-DB02-7E7B-14F5-C7BD23FE7524

{
  "instanceName": "NIACIN",
  "dbEngineEdition": "Standard",
  "clusterQuorumType": "NotApplicable",
  "perfMonMode": 1000,
  "isLinkedServer": "False",
  "xpCmdShellEnabled": "True",
  "isSqlClrEnabled": "False",
  "encryptionEnabled": "False",
  "isMirroringEnabled": "False",
  "replicationPresent": "False",
  "maxServerMemInMB": 18432,
  "dbCount": 4,
  "totalDbSizeInMB": 1191.0625
}

{
  "instanceName": "MSSQLSERVER",
  "dbEngineEdition": "Enterprise",
  "clusterQuorumType": "NodeMajority",
  "perfMonMode": 1000,
  "isLinkedServer": "False",
  "xpCmdShellEnabled": "True",
  "isSqlClrEnabled": "False",
  "encryptionEnabled": "False",
  "isMirroringEnabled": "False",
  "replicationPresent": "False",
  "maxServerMemInMB": 2147483647,
  "dbCount": 5,
  "totalDbSizeInMB": 253.125
}
