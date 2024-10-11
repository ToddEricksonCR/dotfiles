select pd.display_name, a.instancename, jsonb_pretty(d.sizing_details::jsonb) --, * 
from vmware_cpu_mapping_details_v2 d
inner join awsinstances a on a.customerid  = d.customer_id and a.instanceid  = d.instance_id 
inner join plan_details pd on d.customer_id = pd.customer_id and d.plan_id = pd.plan_id and pd.display_name in ('OLA 8 - RDS Workload, 1 Year RI (NUP)')
where a.customerid = 212752 and a.instancename in('clatelprd01',
'clateltst01',
'insvbiprdsql01');


select a.instancename, msdi.feature_list,  msdi.* from application_data.ms_sql_database_info msdi 
inner join awsinstances a on a.customerid  = msdi.customer_id and a.instanceid  = msdi.instance_id 
where msdi.customer_id = 212752 and a.instancename in('clatelprd01',
'clateltst01',
'insvbiprdsql01')
order by a.instancename , msdi.database_name 

select a.instancename, msdi.feature_list,  msdi.* from application_data.ms_sql_database_info msdi 
inner join awsinstances a on a.customerid  = msdi.customer_id and a.instanceid  = msdi.instance_id 
where msdi.customer_id = 212711 and a.instancename in('LSBitLocker01',
'LSPHRMGRD01',
'RIRESEARCHSQL')
order by a.instancename , msdi.database_name 


select pd.display_name, a.instancename, d.sizing_details, jsonb_pretty(d.sizing_details::jsonb) --, * 
from vmware_cpu_mapping_details_v2 d
inner join awsinstances a on a.customerid  = d.customer_id and a.instanceid  = d.instance_id 
inner join plan_details pd on d.customer_id = pd.customer_id and d.plan_id = pd.plan_id and pd.display_name in ('OLA 8 - RDS Workload, 1 Year RI (NUP)', 'OLA 2 - Workload, On-Demand')
where a.customerid = 212711 and a.instancename in('RIRESEARCHSQL');
limit 50

select a.instancename, msdi.feature_list,  msdi.* from application_data.ms_sql_database_info msdi 
inner join awsinstances a on a.customerid  = msdi.customer_id and a.instanceid  = msdi.instance_id 
where msdi.customer_id = 212724 and a.instancename in('CRMCDBP1RAX1')
order by a.instancename , msdi.database_name 


select pd.display_name, a.instancename, d.sizing_details, jsonb_pretty(d.sizing_details::jsonb) --, * 
from vmware_cpu_mapping_details_v2 d
inner join awsinstances a on a.customerid  = d.customer_id and a.instanceid  = d.instance_id 
inner join plan_details pd on d.customer_id = pd.customer_id and d.plan_id = pd.plan_id --and pd.display_name in ('OLA 8 - RDS Workload, 1 Year RI (NUP)')
where a.customerid = 212724 and a.instancename in('CRMCDBP1RAX1');

SELECT use_one2one_instance_mapping,instance_type, * FROM user_parameters.get_parameters_with_details2(212711, 7598, 4505, 679712, 'v_ye49Zczw', 13);

SELECT a.instance_type, a.bottleneck, a.* FROM get_hardware_mapping(212711, 679712, 13, 1) a;

