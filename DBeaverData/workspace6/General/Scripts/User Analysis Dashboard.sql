select  u1.parent_user_id, u2.email, u1.user_id, u1.email, u1.role_id, u1.user_type, u1.overview_dashboard_user_id, u1.* 
from users u1
left join users u2
on u1.parent_user_id = u2.user_id
where u1.company ilike 'bytes%'
order by u1.parent_user_id

select * from users where parent_user_id =2045

select u1.parent_user_id, u2.email ,count(*)
from users u1
inner join users u2
on u1.parent_user_id = u2.user_id
group by u1.parent_user_id, u2.email
order by 3 desc

select role_id ,user_type ,user_type_mapping_id ,* from users
where user_type_mapping_id != 1 and user_type is not null


select odu.email, odpam.* from overview_dashboard_partner_assoiation_mapping odpam 
join overview_dashboard_users odu on odu.user_id = odpam.overview_dashboard_parent_user_id 

select * from overview_dashboard_partner_number_mapping odpnm -- empty
select * from overview_dashboard_user_bucket_mapping odubm -- 133 records
select role_id, count(*) from overview_dashboard_users odu 
group by role_id

select * from partner_claimed_customers_mapping pccm   -- empty
select * from partner_claimed_customers_settings pccs  -- empty
select * from dashboard_user_type_mapping dutm -- empty
select * from user_type_mapping utm  -- empty
select * from user_roles ur order by id
select * from user_type_mapping utm -- empty



select * from users where parent_user_id =313 and role_id =1
order by email 

select * from codes c -- empty
select * from black_listed_domains bld -- empty

select u.user_id ,u.email ,u.password,u.first_name  ,u.last_name  ,
u.company,u.phone,u.is_temp_password, u.is_new_account, u.self_service_step_id, u.auto_open_self_service_dialog, 
u.free_poc_node_count, u.last_updated, u.show_terms_checkbox, u.parent_user_id,u.demo_iaas_providers, ur.id ,ur.type ,ur.description, 
u.activation_token, u.is_activated, u.token_creation_time,u.zendesk_user_id,u.user_type_mapping_id, u.allowed_to_create_orders, u.global_partner, u.overview_dashboard_user_id, u.association_with_overview_dashboard 
from users u, user_roles ur 
where u.role_id=ur.id

select * from users where email ilike '%todd%'

select user_type, user_type_mapping_id, * from users where role_id= 1

select * from user_roles ur 

select * from users where user_id  =313

SELECT company, user_id,email FROM users where global_partner = true

