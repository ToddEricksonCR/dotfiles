--Researching stuck plans

select now(), time_started,*
from ondemand_processing.current_tasks
where being_processed_cnt>0 and time_completed is null;

update ondemand_processing.current_tasks set being_processed_cnt = 0 where being_processed_cnt>0 and 

select count(*) FILTER (WHERE being_processed_cnt>0 and time_completed is null) as in_progress,
  count(*) FILTER (WHERE being_processed_cnt>0 and time_completed is not null) as completed,
  count(*) FILTER (WHERE being_processed_cnt=0) as pending
from ondemand_processing.current_tasks

select * from plan_details where customer_id = '211918' and processed_status = 'pending'

select planning.recompute_new_plan(211918,24,true);

select * from user_parameters_mapping upm 
where customer_id = 211841
  and plan_id =23
limit 10

--update user_parameters.parameter_cache pc 
set instance_types_to_consider = 'm5'
select * 
from user_parameters.parameter_cache pc 
where customer_id = 211841
  and plan_id =23
limit 10


c5,m5,r5
