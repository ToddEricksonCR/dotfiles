select * from server_process_info spi where os_type ='linux' limit 200


select server_process_name  from server_process_info spi 
where os_type ='linux' 
and server_process_name !~ '[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}' 
--and server_process_name !~ 'oracle'
group by server_process_name
limit 200

select * from server_process_info spi  where customer_id = 211813 and process_name is not null limit 200

select * from client_process_info cpi where customer_id = 211813 and process_name is not null limit 200

