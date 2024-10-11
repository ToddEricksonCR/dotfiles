select instance_id, table_name, first_received, last_received 
from collector_data_summary 
where customer_id = 211568  --<< replace customer id
limit 50
