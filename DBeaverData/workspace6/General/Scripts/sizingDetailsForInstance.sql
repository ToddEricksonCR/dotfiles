--Get the customerID for an instwnce name
select * from awsinstances where instancename ilike 'sec-cs1';
--Get the instanceID when you know the instance name and customerID
select * from awsinstances where customerid  = 212512 and instancename in('norfisrvvpdm0',
'S12VM',
'VRSDC2',
'S18VM',
'VRSDC1',
'norfisrvvdeskt1',
'NorSTAC',
'VRSCAD0',
'NORFISRVVPRINT1',
'Viessmann-radar');

select * from awsinstances a where instanceid ilike 'V_KSTHT90P'

--Get the sizing details when you know the instance name and customerID and PlanID
select pd.display_name, a.instancename, jsonb_pretty(d.sizing_details::jsonb) --, * 
from vmware_cpu_mapping_details_v2 d
inner join awsinstances a on a.customerid  = d.customer_id and a.instanceid  = d.instance_id 
inner join plan_details pd on d.customer_id = pd.customer_id and d.plan_id = pd.plan_id and pd.display_name in ('OLA 8 - RDS Workload, 1 Year RI (NUP)')
where a.customerid = 212752 and a.instancename in('clatelprd01',
'clateltst01',
'insvbiprdsql01');


select pd.display_name, a.instancename, d.sizing_details , * 
from vmware_cpu_mapping_details_v2 d
inner join awsinstances a on a.customerid  = d.customer_id and a.instanceid  = d.instance_id 
inner join plan_details pd on d.customer_id = pd.customer_id and d.plan_id = pd.plan_id and pd.plan_id =0
where a.customerid = 212593

limit 20

select * from plan_details pd where customer_id = 212752

select * from plan_details pd where display_name ilike 'ola 2%' and plan_id <>7


select d.ec2_instance_type , * 
from vmware_cpu_mapping_details_v2 d where plan_id <100 and ec2_instance_type ilike '%7.%' limit 10


--Plans ***This is not always accurate****
/*
%   display_name                          display_rank  use_for_landing_page is_visible_always plan_id
%   --------------------------------------------------------------------------------------------------
%   OLA 2 - Workload, On-Demand           1             true                 true              7
%   OLA 1 - Hardware                      2             false                false             6
%   OLA 3 - Workload, 1 Year RI (AUP)     3             false                false             8
%   OLA 4 - Workload, 1 Year RI (NUP)     4             false                false             9
%   OLA 5 - Workload, 3 Year RI (AUP)     5             false                false             10
%   OLA 6 - Workload, 3 Year RI (NUP)     6             false                false             11
%   OLA 7 - Workload, Dedicated Hosts     7             false                false             12
%   OLA 8 - RDS Workload, 1 Year RI (NUP) 8             false                false             13
%   Workload, On-Demand                   9             false                false             2
%   Hardware, On-Demand                   10            false                false             1
%   Workload, All Upfront 3-yr            11            false                false             3
%   Workload, Cost Optimized 3-yr         12            false                false             4
%   Workload, All Upfront 1-yr            13            false                false             5
*/


select * from ec2_instance_type_info eiti where instance_type ilike '%7%' and vendor = 1 limit 10 

