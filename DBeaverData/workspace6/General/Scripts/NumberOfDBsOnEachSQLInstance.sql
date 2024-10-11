
--gets the number of databases on each SQL Server instance
select distinct customer_id, c.company, a2.instancename as ServerName,  other_sql_info->>'instanceName' as instanceName
, cast(other_sql_info->>'dbCount' as integer) as db_count--, * 
from application_data.ms_sql_database_info as a 
inner join customers c on a.customer_id = c.id
inner join awsinstances a2 on a.customer_id = a2.customerid and a2.instanceid = a.instance_id
	where edition ilike any(array['Standard%','Enterprise%']) 
	  and other_sql_info->>'dbCount' is not null
	  --and cast(other_sql_info->>'dbCount' as integer) > 100
	  --and customer_id in (211322, 211686, 211717, 211630, 211395, 211543, 211326, 211233, 211449, 211255, 211228, 211464, 211240, 211490, 211638, 211242, 211197, 211552, 211325, 211429, 211256, 211205, 211476, 211530, 211663, 211178, 211343, 211506, 211379, 211479, 211396, 211522, 211374, 211287, 211601, 211192, 211307, 211540, 211660, 211452, 211270, 211507, 211392, 211406, 211380, 211385, 211657, 211386, 211414, 211443, 211457, 211324, 211454, 211437, 211519, 211518, 211199, 211560, 211117, 211330, 211182, 211230, 211375, 211321, 211492, 211369, 211371, 211428, 211501, 211394, 211338, 211129, 211445, 211359, 211249, 211417, 211511, 211544, 211439, 211402, 211491, 211556, 211513, 211345, 211212, 211485, 211537, 211225, 211214, 211430, 211550, 211384, 211420, 211335, 211720, 211210, 211441, 211403, 211527, 211526, 211285, 211561, 211444, 211486, 211130, 211533, 211470, 211344, 211373, 211172, 211179, 211451, 211104, 211257, 211309, 211418, 211235, 211391, 211229, 211306, 211332, 211273, 211401, 211421, 211313, 211323, 211399, 211222, 211177, 211254, 211231, 211271, 211234, 211408, 211151, 211136, 211448, 211156, 211500, 211305, 211314, 211262, 211269, 211381, 211316, 211193, 211510, 211289, 211404, 211191, 211251, 211123, 211438, 211488, 211336, 211393, 210697, 211097, 211207, 211215, 211311, 211258, 211201, 211334, 211549, 211171, 211365, 211450, 211555, 211593, 211515, 211405, 211565, 211595, 211268, 211480, 211538, 211468, 211547, 211634, 211535, 211377, 211368, 211416, 211202, 211195, 211232, 211274, 211360, 211259, 211093, 211482, 211548, 211484, 211431, 211320, 211424, 211329, 211203, 211310, 211196, 211319, 211541, 211489, 211554, 211496, 211682, 211683, 211170, 211553, 211536, 211167, 211159, 211331, 211166, 211213, 211367, 211400, 211422, 211567, 211241, 211264, 211138, 211211, 211341, 211708, 211709, 211088, 211208, 211649, 211378, 211652, 211710, 211668, 211627, 211339, 211656, 211558, 211704, 211539, 211639, 211592, 211516, 211502, 211478, 211587, 211557, 211206, 211551, 211493, 211504, 211143, 211650, 211722, 211176, 211337, 211481, 211458, 211459, 211263, 211236, 211015, 211288, 211317, 211366, 211333, 211633, 211157, 211425, 211521, 210761, 211376, 211412, 210526, 211217, 211099, 211209)
	order by 1, 3, 4

select 
  sum(case when cast(other_sql_info->>'dbCount' as integer) < 10 then 1 end) as "<10"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 10 and cast(other_sql_info->>'dbCount' as integer) < 20 then 1 end) as "10-20"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 20 and cast(other_sql_info->>'dbCount' as integer) < 30 then 1 end) as "20-30"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 30 and cast(other_sql_info->>'dbCount' as integer) < 40 then 1 end) as "30-40"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 40 and cast(other_sql_info->>'dbCount' as integer) < 50 then 1 end) as "40-50"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 50 and cast(other_sql_info->>'dbCount' as integer) < 60 then 1 end) as "50-60"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 60 and cast(other_sql_info->>'dbCount' as integer) < 70 then 1 end) as "60-70"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 70 and cast(other_sql_info->>'dbCount' as integer) < 80 then 1 end) as "70-80"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 80 and cast(other_sql_info->>'dbCount' as integer) < 90 then 1 end) as "80-90"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 90 and cast(other_sql_info->>'dbCount' as integer) < 100 then 1 end) as "90-100"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 100 and cast(other_sql_info->>'dbCount' as integer) < 200 then 1 end) as "100-200"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 200 and cast(other_sql_info->>'dbCount' as integer) < 300 then 1 end) as "200-300"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 300 and cast(other_sql_info->>'dbCount' as integer) < 400 then 1 end) as "300-400"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 400 and cast(other_sql_info->>'dbCount' as integer) < 500 then 1 end) as "400-500"
, sum(case when cast(other_sql_info->>'dbCount' as integer) > 500 then 1 end) as ">500"
from application_data.ms_sql_database_info as a 
	where edition ilike any(array['Standard%','Enterprise%']) 
	  and other_sql_info->>'dbCount' is not null


	  
--gets the number of SQL Enterprise servers for each assessment

select customer_id, c.company, count(*) as sql_enterprise_count from (	  
select distinct customer_id, instance_id  from application_data.ms_sql_database_info as a 
	where edition ilike 'Enterprise%') as b
inner join customers c on b.customer_id = c.id
group by customer_id, c.company
having count(*) between 5 and 20;



