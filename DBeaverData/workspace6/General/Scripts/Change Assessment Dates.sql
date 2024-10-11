
UPDATE customer_onboarding_status SET onboarding_completion_date = '2023-06-04',
	assessment_parameters = '{"processDataFromTime": "2023-06-04", "processDataUpToTime": "2023-06-07"}'::JSON,
	expected_result_date = '2023-06-10' WHERE customer_id = 211593;
	
select * from customer_onboarding_status where customer_id in (211595,211569,211633, 211632)
select * from customers where id = 211595

