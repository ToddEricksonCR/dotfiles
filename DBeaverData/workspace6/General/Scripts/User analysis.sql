select * from users u 
where 1=1
and email not like 'cancel%'
and customer_id = 212674

select u.*, c.* from customers c 
left join users u on u.customer_id = c.id 
where  c.email  like 'cancel%'
and u.email  like 'cancel%'

select count(*) from customers c 

select partner_id, * from customers c 

select user_id, email, password, first_name, last_name, company, phone, role_id, title, is_temp_password, last_updated, parent_user_id, global_partner, user_type, account_type, demo_iaas_providers, activation_token, is_activated, token_creation_time, source_ip_from_request, overview_dashboard_user_id, association_with_overview_dashboard, show_terms_checkbox, zendesk_user_id, is_new_account, self_service_step_id, auto_open_self_service_dialog, free_poc_node_count, user_type_mapping_id, allowed_to_create_orders, talentlms_user_details from users 
where id = 313


SELECT u.id, dashboard_users.user_id, u.email, u.customer_id, dashboard_users.email, u.*, dashboard_users.*
FROM users u 
JOIN dblink('dbname=dashboard user=postgres password=qy8VSv67xeAywm' ,'SELECT user_id, email, password, first_name, last_name, company, phone, role_id, title, is_temp_password, last_updated, parent_user_id, global_partner, user_type, account_type, demo_iaas_providers, activation_token, is_activated, token_creation_time, source_ip_from_request, overview_dashboard_user_id, association_with_overview_dashboard, show_terms_checkbox, zendesk_user_id, is_new_account, self_service_step_id, auto_open_self_service_dialog, free_poc_node_count, user_type_mapping_id, allowed_to_create_orders, talentlms_user_details 
 FROM users') 
     AS dashboard_users(
     		user_id int4,
			email varchar(255),
password varchar(1000),
			first_name varchar(255),
			last_name varchar(255),
			company varchar(255),
			phone varchar(255),
			role_id int4,
			title varchar(255),
			is_temp_password bool,
			last_updated timestamp,
			parent_user_id int4,
			global_partner bool,
			user_type int4,
			account_type varchar(21),
			demo_iaas_providers varchar(255),
			activation_token varchar(512),
			is_activated bool,
			token_creation_time timestamp,
			source_ip_from_request varchar(255),
			overview_dashboard_user_id int4,
			association_with_overview_dashboard bool,
			show_terms_checkbox bool,
			zendesk_user_id int8,
			is_new_account bool,
			self_service_step_id int4,
			auto_open_self_service_dialog bool,
			free_poc_node_count int4,
			user_type_mapping_id int4,
			allowed_to_create_orders bool,
			talentlms_user_details json)
ON u.email = dashboard_users.email
where u.email not like 'cancel%'

SELECT * from users where id = 313


select c.id, c.company, c.email, c.lastupdated, pccmn.*
from customers c
left join partner_claimed_customers_mapping_new pccmn  
on c.email = pccmn.customer_email 
where  c.email not like 'cancel%'
--and pccmn.partner_id = 52
and pccmn.partner_id is null


select pccmn.partner_id, count(*) 
from customers c
left join partner_claimed_customers_mapping_new pccmn  
on c.email = pccmn.customer_email 
where  c.email not like 'cancel%'
group by pccmn.partner_id 

select * from partner_claimed_customers_mapping_new pccmn  
where partner_id in (663,
714,
748,
944,
1363,
2045,
2329
)
and customer_email not like 'cancelled%'

select * from partner_licenses_order_mapping plom 

select * from user_order_mapping
where customer_email  ilike 'volo%'

select * from user_order_mapping where customer_email ='tcosta@nuageit.com.br'

select * from customers c
left join user_order_mapping uom on c.email =uom.customer_email 
where c.email not like 'cancelled%' and uom.customer_email is null 

select * from billing_plan_activation_codes
where emailid ='tcosta@nuageit.com.br'

select * from user_order_mapping
where customer_email = 'volotea@cloudamize.com'
order by last_updated desc 

insert into user_order_mapping(customer_email, assigned_to, assigned_by) 
values('volotea@cloudamize.com',2640,2640)
delete from user_order_mapping where id =2330




select  pccm.partner_id, pccm.is_free_poc, coalesce(users.email, pccm.customer_email) as customer_email, 
pccm.customer_first_name,pccm.customer_last_name,coalesce(cus.company, pccm.customer_company) as customer_company, bppm.product as name, 
pccm.customer_iaas_provider, pccm.customer_view, pccm.last_updated,pccm.region_id, pccm.node_count_to_assess, cus.data_status, 
pccm.assessment_duration_months,pccm.created_from_overview_dashboard, coalesce(ppf.purchase_order,'N/A') as purchase_order, ppf.po_file_name, ppf.billing_contact_email, 
users.customer_id, users.product, cus.database_key, cus.cctest_database_key, cus.raw_database_key, cus.lastupdated, cus.cctest_database_key, 
cos.onboarding_completion_date, cos.expected_result_date as result_date, cos.assessment_status, bpac.accesscode, pccm.expiration_date 
from partner_claimed_customers_mapping_new pccm  
join billing_plan_product_mapping bppm on pccm.customer_billing_plan_id= bppm.plan_id  
left join customers cus on cus.email = pccm.customer_email  
left join datasource_metadata dm on dm.key = cus.database_key  
left join partner_po_files ppf on pccm.customer_email =ppf.customer_email  
left join (select users.customer_id, users.email, bppm.product 
from users 
left join customer_plan_subscription cps on cps.customerid =users.customer_id 
inner join billing_plan_product_mapping bppm on cps.billing_plan_id=bppm.plan_id) as users 
on cus.email = users.email 
left join customer_onboarding_status cos on cus.id = cos.customer_id 
 left join billing_plan_activation_codes bpac on bpac.emailid = pccm.customer_email 
where pccm.status='Active' and pccm.product = 'Assess' 
and pccm.customer_email in (select customer_email from user_order_mapping where assigned_to= 2640) 
and dm.is_active is not false
--and cus.email like 'vol%'

select * from partner_claimed_customers_mapping_new pccmn where customer_email ilike '%volo%'		

CREATE TABLE public.assessment_users (
	user_account_id int4 NOT NULL,
	customer_id int4 NULL

select * from customers where id in (212775,212824) --tatix

select * from customers where id in (212805,212768) --bromfield

select * from customers where id in (212452,
212436,
212474,212481,
212541)
select * from customers where company in (
'Seera Group',
'AZ-State of Arizona  Secretary of State',
'Hikma Pharma',
'Bloomberg INDG - Infrastructure Migrati',
'SIRIM Berhad'
)
