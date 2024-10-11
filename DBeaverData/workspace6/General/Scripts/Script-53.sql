SELECT ms_sql_details ,* FROM component_list cl 
where customer_id =212592 
  and ms_sql_details <> ''
limit 10

select * from application_data.ms_sql_database_info msdi 
where cluster_name is not null and customer_id > 212700
limit 200

SELECT jsonb_pretty(other_sql_info::jsonb),cluster_name, database_instance_name , database_name, customer_id , instance_id 
--select distinct(customer_id)
FROM application_data.ms_sql_database_info WHERE 1=1 
--and customer_id in (212647) 
-- AND instance_id='v_YrSHgKYq' AND database_instance_name IS NOT NULL AND database_name IS null
-- and other_sql_info is not null and other_sql_info::jsonb->>'agReadableSecondary' != '' --and other_info::jsonb->>'clusterQuorumType' != ''
and other_sql_info is not null and other_sql_info::jsonb->>'agReplicas' != '' --and other_info::jsonb->>'clusterQuorumType' != ''
--and cluster_name is not null
--and cluster_name ='SQLPFCI2301'
and instance_id in (select instance_id FROM application_data.ms_sql_database_info WHERE  cluster_name is not null)
order by database_instance_name, database_name 

limit 100



SELECT jsonb_pretty(other_sql_info::jsonb),* FROM application_data.ms_sql_database_info WHERE 1=1
and instance_id = 'v_RPkiFzdQ'
and customer_id = 212647 -- and instance_id  = 'v_ZwO9bHMu'
limit 10

{
    "dbCount": 9,
    "agReplicas": "SQLAOTEST2HOSP\\BEET SQLAOTEST2ROB\\BEET",
    "perfMonMode": 1000,
    "instanceName": "BEET",
    "agNameByQuery": "SQLAGbeet",
    "agFailoverMode": "AUTOMATIC",
    "isLinkedServer": "False",
    "dbEngineEdition": "Enterprise",
    "isSqlClrEnabled": "False",
    "sqlServerStatus": "Running",
    "totalDbSizeInMB": 1272.625,
    "maxServerMemInMB": 8192,
    "clusterQuorumType": "NodeAndDiskMajority",
    "encryptionEnabled": "False",
    "hasMoreThan48vCpu": 0,
    "useOnlineIndexing": 0,
    "xpCmdShellEnabled": "True",
    "agLocalReplicaRole": "Primary",
    "isMirroringEnabled": "False",
    "replicationPresent": "False",
    "agReadableSecondary": "ALL",
    "hasReadOnlyReplicas": 1,
    "useResourceGovernor": 0,
    "availabilityGroupName": "SQLAGbeet",
    "hasMoreThan128GBMemory": 0,
    "useROrPythonExtensions": 0,
    "usePeer2PeerReplication": 0,
    "agSynchronousReplication": "1",
    "useAsynchronousMirroring": 0,
    "agPrimaryReplicaServerName": "SQLAOTEST2ROB\\BEET",
    "hasAsynchronousCommitReplicas": 0,
    "isLocalAgReplicaServerPrimary": "True",
    "tempdbMetadataMemoryOptimized": 0,
    "sqlServerAnalysisServicesStatus": "Stopped",
    "sqlServerReportingServicesStatus": "Stopped",
    "hasAvailabilityGroupsWithMoreThanOneDb": 1
}

{
    "dbCount": 84,
    "perfMonMode": 1000,
    "instanceName": "REPORT",
    "isLinkedServer": "False",
    "dbEngineEdition": "Enterprise",
    "isSqlClrEnabled": "False",
    "sqlServerStatus": "Running",
    "totalDbSizeInMB": 3281.125,
    "maxServerMemInMB": 2048,
    "clusterQuorumType": "NotApplicable",
    "encryptionEnabled": "False",
    "xpCmdShellEnabled": "True",
    "isMirroringEnabled": "False",
    "replicationPresent": "False"
}

{
    "avgReadsPerSec": 0.0050821960806691395,
    "readPercentage": 77.8769850730896,
    "avgWritesPerSec": 0.0014437306672334671,
    "peakReadsPerSec": 0.047807525843381882,
    "peakWritesPerSec": 0.017668001912534238,
    "avgReadBytesPerSec": 348.58522902594672,
    "avgWriteBytesPerSec": 8.1310520039664382,
    "peakReadBytesPerSec": 4810.8839111328125,
    "avgReadsWritesPerSec": 0.0065259266961624641,
    "peakWriteBytesPerSec": 91.524388504028323,
    "peakReadsWritesPerSec": 0.065475526079535482,
    "avgReadWriteBytesPerSec": 356.71628336111706,
    "peakReadWriteBytesPerSec": 4902.4083984375
}

{"dbCount": 6, "perfMonMode": 1000, "instanceName": "MSSQLSERVER", "agNameByQuery": "", "agFailoverMode": "", "isLinkedServer": "False", "dbEngineEdition": "Enterprise", "isSqlClrEnabled": "False", "sqlServerStatus": "Running", "totalDbSizeInMB": 56205.6875, "maxServerMemInMB": 2147483647, "clusterQuorumType": "NotApplicable", "encryptionEnabled": "False", "hasMoreThan48vCpu": 0, "useOnlineIndexing": 0, "xpCmdShellEnabled": "True", "isMirroringEnabled": "False", "replicationPresent": "False", "agReadableSecondary": "", "hasReadOnlyReplicas": 0, "useResourceGovernor": 0, "hasMoreThan128GBMemory": 0, "useROrPythonExtensions": 0, "usePeer2PeerReplication": 0, "agSynchronousReplication": "", "useAsynchronousMirroring": 0, "hasAsynchronousCommitReplicas": 0, "tempdbMetadataMemoryOptimized": 0, "sqlServerReportingServicesStatus": "Running", "hasAvailabilityGroupsWithMoreThanOneDb": 0}
