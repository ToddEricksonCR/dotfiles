--Raw DB
select * from co_win_ms_sql_info_v2 where customer_id=211197 
and edition_type ilike 'Enterprise Edition%'
--and cluster_name != '' and cluster_name is not null 
limit 100

--Cooked DB
select * from application_data.ms_sql_database_info where customer_id=211197 
and edition_type ilike 'Enterprise Edition%'
limit 100


