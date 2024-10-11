select pccm.partner_id, pccm.is_free_poc, coalesce(users.email, pccm.customer_email) as customer_email, 
pccm.customer_first_name,pccm.customer_last_name,coalesce(cus.company, pccm.customer_company) as customer_company, bppm.product as name, 
pccm.customer_iaas_provider, pccm.customer_view, pccm.last_updated,pccm.region_id, pccm.node_count_to_assess, cus.data_status, 
pccm.assessment_duration_months,pccm.created_from_overview_dashboard, coalesce(ppf.purchase_order,'N/A') as purchase_order, ppf.po_file_name, ppf.billing_contact_email, 
users.customer_id, users.product, cus.database_key, cus.cctest_database_key, cus.raw_database_key, cus.lastupdated, cus.cctest_database_key, 
cos.onboarding_completion_date, cos.expected_result_date as result_date, cos.assessment_status, bpac.accesscode, pccm.expiration_date 
from partner_claimed_customers_mapping_new pccm  
join billing_plan_product_mapping bppm on pccm.customer_billing_plan_id = bppm.plan_id  
left join customers cus on cus.email = pccm.customer_email  
left join datasource_metadata dm on dm.key = cus.database_key  
left join partner_po_files ppf on pccm.customer_email =ppf.customer_email  
left join (select users.customer_id, users.email, bppm.product 
from users left join customer_plan_subscription cps on cps.customerid =users.customer_id 
inner join billing_plan_product_mapping bppm on cps.billing_plan_id=bppm.plan_id) as users 
on cus.email = users.email 
left join customer_onboarding_status cos on cus.id = cos.customer_id 
 left join billing_plan_activation_codes bpac on bpac.emailid = pccm.customer_email 
where  pccm.status='Active' and pccm.product = 'Assess' and dm.is_active is not false 	
and (cus.is_demo_account is null or  cus.is_demo_account = false) and pccm.partner_id in (313)
order by 3

select users.customer_id, users.email, bppm.product 
from users left join customer_plan_subscription cps on cps.customerid =users.customer_id 
inner join billing_plan_product_mapping bppm on cps.billing_plan_id=bppm.plan_id

select * from customer_plan_subscription order by id desc

select * from billing_plan_product_mapping
select * from partner_claimed_customers_mapping_new where status='Active'
select * from users u 

select id , company_name as companyName, partner_id as partnerId, privatekey as privateKey, branding_required brandingRequired ,* 
from partner_branding_details where passkey in('bklpGd97Vm7rkhSunlHq1GKMAOMZpgwTe3teoiyXkXI=',
'+c6WbbKSGApr9J+8w7JCcohb2tI8wm/dwkC2bGylbjs=')


