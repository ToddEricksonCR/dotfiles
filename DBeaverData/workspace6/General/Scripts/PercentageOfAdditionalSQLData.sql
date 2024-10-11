--run on Cooked
--gets the number of licensable SQL Servers and calculateds the percentage of these that we collected aditional data for 

select a.count_of_additional::float,l.count_of_licensable::float, a.count_of_additional::float/l.count_of_licensable::float*100 as percent_additional
from 
	(select count(distinct instance_id) as count_of_licensable from application_data.ms_sql_database_info  
	where edition ilike any(array['Standard%','Enterprise%']) ) as l
,
	(select count(distinct instance_id) as count_of_additional from application_data.ms_sql_database_info  
	where edition ilike any(array['Standard%','Enterprise%']) 
	and other_sql_info->>'dbCount' is not null) as a
