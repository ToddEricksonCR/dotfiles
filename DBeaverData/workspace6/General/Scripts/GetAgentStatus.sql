--Run on Master
select last_upload_date  , * from agent_status 
WHERE customer_id = 211229 --and instance_id = 'v_WXBjIjBl'
limit 5

select * from customer_systems cs 
where instanceid = 'v_WXBjIjBl' and customerid = 210990 
limit 2
SELECT id, customerid, instanceid, systemkey, customerkey, publicip, updated_date, created_date, instancemapped, privateip, platform, account_id, uuid, mac, hostname, accum_sum, accum_sum_last_date, manage_instance_id, data_type, agentless_dc_systemkey
FROM public.customer_systems limit 2;


select * from customers where id in (211229, 211205, 211195) limit 5

select distinct third_party_status::jsonb -> 'collectionStatus' ->> 'msSql'
--,third_party_status::jsonb -> 'msSql' 
--,third_party_status , *
from  agent_status 
WHERE --customer_id = 210990 
--and 
third_party_status::jsonb -> 'collectionStatus' ? 'msSql' is not null
and third_party_status::jsonb -> 'collectionStatus' ->> 'msSql' <> 'N/A'
--and third_party_status::text <> '{}'::text
--and third_party_status::jsonb 
limit 1000



select d.*
from  agent_status a
join pg_catalog.json_each_text(a.third_party_status) d on true 
WHERE a.customer_id = 210990 


select * from customer_onboarding_status  limit 10

SELECT customer_id, onboarding_completion_date, expected_result_date, frequency, delivery_id, assessment_status, last_computed_date, computation_is_running, initial_onboarding_completion_date, last_data_status_check, app_connectivity_post_processing_status, app_processing_lock, app_processing_status, app_processing_lock_time, app_processing_status_test, cmdb_onboarding_completion_date, cmdb_status, assessment_parameters, analytics_processing_state, estimated_num_nodes, app_processing_status_v2, app_processing_status_test_v2, other_analytics, metric_data_processing_state, id, is_continuous_delivery, restricted_country
FROM public.customer_onboarding_status;

