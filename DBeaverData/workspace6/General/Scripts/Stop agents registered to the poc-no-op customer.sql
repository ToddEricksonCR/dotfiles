
--Stop agents registered to the poc-no-op customer

SELECT id, customer_id, instance_id, current_agent_status, preferred_agent_status, current_version, preferred_version, upgrade_action, cpu_percent, memory_percent, disk_dir_out_kb, disk_dir_bin_kb, disk_dir_logs_kb, updated_date, created_date, disk_dir_cl_out_kb, disk_dir_ofl_out_kb, current_cl_status, preferred_cl_status, current_ofl_status, preferred_ofl_status, cl_cpu_percent, cl_memory_percent, ofl_cpu_percent, ofl_memory_percent, onprem, account_id, operation, being_processed_cnt, number_of_attempts, worker_ip_address, worker_pid, processing_start_time, last_heartbeat_time, data_processed_up_to, is_visible, is_ready_for_processing, has_data_error, message, last_upload_date, num_forced_restart, initial_processing_complete, memory_usage, command_list, list_of_connections, cloudendure_installation_options, cloudendure_installation_status, cloudendure_current_status, one_time_command_list, one_time_command_list_seq, one_time_command_list_sent, cloudendure_user_name, cloudendure_password, command_test, command_option, third_party_status
FROM public.agent_status
where customer_id=210788;

UPDATE agent_status SET preferred_agent_status='STOP' WHERE customer_id=210788