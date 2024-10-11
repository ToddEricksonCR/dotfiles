select
	*
from
	(
	select
		c.id customer_id,
		cos.restricted_country,
		date(pccm.last_updated + interval '1 month' *
		case
			when c.assessment_duration_months>pccm.assessment_duration_months then c.assessment_duration_months
			else pccm.assessment_duration_months
		end) as expirationDate,
		c.expiration_date,
		d.key,
		case
			when c.assessment_duration_months>pccm.assessment_duration_months then c.assessment_duration_months
			else pccm.assessment_duration_months
		end as assessment_duration_in_months,
		c.email email
	from
		customers c,
		customer_onboarding_status cos,
		partner_claimed_customers_mapping_new pccm,
		datasource_metadata d
	where
		c.id = cos.customer_id
		and c.email = pccm.customer_email
		and c.raw_database_key = d.key
		and pccm.last_updated<now()
		and c.partner_id is not null
		and pccm.partner_id is not null
		and pccm.partner_id != 1
		and c.partner_id != 1
		and c.email not like 'cancelled%'
		and key = 'RAW33'  --<< Specify RAW DB
	order by
		assessment_duration_in_months desc,
		expirationDate asc) as a
where
	a.expirationDate > current_date-120
order by a.expirationDate desc
		


select c.id, c.email, c.raw_database_key, pccm.partner_id, cos.expected_result_date, c.expiration_date--, c.partner_id, pccm.partner_id
	from
		customers c
		left join customer_onboarding_status cos on c.id = cos.customer_id
		inner join partner_claimed_customers_mapping_new pccm on c.email = pccm.customer_email
		inner join datasource_metadata d on c.raw_database_key = d.key
	where
		email not like 'cancelled%'
	    and (c.expiration_date > now() or c.expiration_date is null)
		and key = 'RAW33' --<< Specify RAW DB
		order by c.expiration_date desc, cos.expected_result_date desc
		
		

select partner_id, * 
from customers c,
		customer_onboarding_status cos
where 
	c.id = cos.customer_id
	and c.email ilike 'reef%'
	
update customers set raw_database_key = 'GERMANY_RAW2' where raw_database_key = 'GERMANY_RAW1' and id in (211434)

update customers set raw_database_key = 'GERMANY_RAW2' where raw_database_key = 'GERMANY_RAW1' and id in (211361)


select create_raw_partitioned_tables_v2_manual(211434)	

select id, email from customers where id in (210788,210966,
211568,
211655,
211244,
211520,
210892,
211432,
211505,
211361)

select id, email, * from customers where id = 211434


select * from customer_onboarding_status limit 10

select c.id, c.email, c.raw_database_key, pccm.partner_id, cos.expected_result_date, c.expiration_date
	from
		customers c
		left join customer_onboarding_status cos on c.id = cos.customer_id
		inner join partner_claimed_customers_mapping_new pccm on c.email = pccm.customer_email
		inner join datasource_metadata d on c.raw_database_key = d.key
	where
		--email not like 'cancelled%'
	    --and 
	    c.expiration_date is null
		and key = 'RAW34' --<< Specify RAW DB
		order by c.expiration_date desc
		
SELECT * 
FROM   customers tb1 
LEFT   JOIN (
   SELECT *
   FROM   dblink('Host=localhost;Port=30000;dbname=cctest;User=postgres;password=qy8VSv67xeAywm ','SELECT id, raw_database_key FROM customers')
   AS     tb2(id int, raw_database_key text)
) AS tb2 ON tb2.id = tb1.id 
where tb1.raw_database_key <> tb2.raw_database_key;
		

select id from customers where raw_database_key = 'RAW34'

select c.id, c.email, c.raw_database_key, pccm.partner_id, cos.expected_result_date, c.expiration_date, cos.*
	from
		customers c
		left join customer_onboarding_status cos on c.id = cos.customer_id
		inner join partner_claimed_customers_mapping_new pccm on c.email = pccm.customer_email
		inner join datasource_metadata d on c.raw_database_key = d.key
	where
		email not like 'cancelled%'
	    and cos.onboarding_completion_date is null
		and key = 'RAW34' --<< Specify RAW DB
		order by c.expiration_date desc
		

select c.id, c.email, c.raw_database_key, pccm.partner_id, cos.expected_result_date, c.expiration_date, c.assessment_completion_notification_date, c.data_status 
	from
		customers c
		left join customer_onboarding_status cos on c.id = cos.customer_id
		inner join partner_claimed_customers_mapping_new pccm on c.email = pccm.customer_email
		inner join datasource_metadata d on c.raw_database_key = d.key
	where
		--email not like 'cancelled%'
	    --and 
	    c.expiration_date > current_date - 60
		and key = 'RAW33' --<< Specify RAW DB
		order by c.expiration_date desc;
		
		
select c.id, c.email, c.raw_database_key, pccm.partner_id, cos.expected_result_date, c.expiration_date
	from
		customers c
		left join customer_onboarding_status cos on c.id = cos.customer_id
		inner join partner_claimed_customers_mapping_new pccm on c.email = pccm.customer_email
		inner join datasource_metadata d on c.raw_database_key = d.key
	where
		email  like 'cancelled%'
	    and 
	    cos.expected_result_date  is null
		and key = 'RAW33' --<< Specify RAW DB
		order by c.expiration_date desc
		
select * from customers where id = 212018

		