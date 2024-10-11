select time_started, now() at time zone 'UTC' - time_started as duration, *
from ondemand_processing.current_tasks
where being_processed_cnt>0 and time_completed is null;

select count(*) FILTER (WHERE being_processed_cnt>0 and time_completed is null) as in_progress,
  count(*) FILTER (WHERE being_processed_cnt>0 and time_completed is not null) as completed,
  count(*) FILTER (WHERE being_processed_cnt=0) as pending
from ondemand_processing.current_tasks

--update ondemand_processing.current_tasks set being_processed_cnt = 0 where being_processed_cnt>0 and time_completed is null;

SELECT res FROM planning.recompute_storage_ec2_v2(211892, 21, false)