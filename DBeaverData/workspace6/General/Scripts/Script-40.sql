select * from application_data.ms_sql_database_info msdi 
where other_sql_info is not null and customer_id > 212600

select max(customer_id) from application_data.ms_sql_database_info msdi 


select instance_type , spec_cpu2006_rate ,* from ec2_instance_type_info where instance_type like 'r7a.%xlarge' or instance_type like 'r7i.%xlarge'
order by number_ecpus , instance_type 
