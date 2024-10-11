--this query finds assessments where the expiration date is less than the provisioned date (aka order date) +81 days.
--The provisioned date is stored in partner_claimed_customers_mapping_new.last_updated 
select c.id, c.company, c.email, c2.last_updated as order_date, date(c2.last_updated) + 81 as expected_experation_date, c.expiration_date  from customers c 
inner join partner_claimed_customers_mapping_new c2 on c.email = c2.customer_email  
where c.expiration_date > current_date and c.expiration_date < date(c2.last_updated) + 81
and email not ilike 'Free-POC%' and email not ilike 'cancelled%' and company != 'dbtest' ;


select c.id, c.company, c.email, c.expiration_date  
from customers c 
where c.expiration_date > current_date - 1 and  c.expiration_date < current_date + 4
and email not ilike 'Free-POC%' and email not ilike 'cancelled%' and company != 'dbtest' 
order by c.expiration_date ;
