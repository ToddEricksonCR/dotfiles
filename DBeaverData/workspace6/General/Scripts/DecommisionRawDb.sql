select is_current, is_active, * from datasource_metadata
where db_type = 'ESTIMATOR';

select c.id, c.email, c.database_key, pccm.partner_id, c.expiration_date, c.assessment_completion_notification_date, c.data_status ,*
	from
		customers c
		left join customer_onboarding_status cos on c.id = cos.customer_id
		inner join partner_claimed_customers_mapping_new pccm on c.email = pccm.customer_email
		inner join datasource_metadata d on c.database_key = d.key
	where
		c.expiration_date > current_date - 60
		and key = 'MASTER_VMWARE12' -- 'GERMANY_VMWARE1'  --<< Specify COOKED DB
		order by c.expiration_date desc;

		
select customer_id, max(last_received)
from collector_data_summary
where last_received > CURRENT_DATE-1
group by customer_id;


211211	2023-11-29 00:47:32.000
211290	2023-11-29 04:24:56.000

211056	2023-11-16 04:26:31.767
211117	2023-11-11 00:46:53.236
211211	2023-11-17 01:17:08.806
211290	2023-11-09 04:29:39.000
211310	2023-11-16 10:23:23.000
211519	2023-11-24 04:25:17.000
211621	2023-11-13 00:49:28.000
211664	2023-11-21 04:27:56.000


select c.id, c.email, c.raw_database_key, pccm.partner_id, cos.expected_result_date, c.expiration_date
	from
		customers c
		left join customer_onboarding_status cos on c.id = cos.customer_id
		inner join partner_claimed_customers_mapping_new pccm on c.email = pccm.customer_email
		inner join datasource_metadata d on c.raw_database_key = d.key
	where
		email not like 'cancelled%'
	    and cos.expected_result_date is null
		and key = 'RAW33' --<< Specify RAW DB
		order by c.expiration_date desc
		
update datasource_metadata set is_active = false where key = 'RAW33'--<< Specify RAW DB

select c.id, c.email, c.raw_database_key, pccm.partner_id, cos.expected_result_date, c.expiration_date
	from
		customers c
		left join customer_onboarding_status cos on c.id = cos.customer_id
		inner join partner_claimed_customers_mapping_new pccm on c.email = pccm.customer_email
		inner join datasource_metadata d on c.database_key = d.key
	where
		email not like 'cancelled%'
	    and cos.expected_result_date is null
		and key = 'GERMANY_VMWARE1'  --'MASTER_VMWARE11' --<< Specify RAW DB
		order by c.expiration_date desc
