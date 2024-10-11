SELECT * FROM users where 1=1
-- and customer_id >212800
and role_id =2

select distinct  role_id from users u 


select * from dashboard.public.users u 
where email like '%frank%'

select * from users
where role_id =3
order by user_id 

select distinct parent_user_id from users u 

select u.*, u2.* from users u 
inner join users u2 on u.parent_user_id = u2.user_id 

select * from partner_claimed_customers_mapping pccm 

select * from dashboard_user_type_mapping dutm 
select * from overview_dashboard_users odu 

select * from users  where parent_user_id =313
order by user_id desc 

select * from user_roles ur 

select * from user_type_mapping utm 

if users.user_type_mapping_id =1 then user is a partner and can access partner dashboard,add new order and add new account executive. if users.user_type_mapping_id =2 then user is a direct customer and can only access customer dashboard.
