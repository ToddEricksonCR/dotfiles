--Get assessments started during month

select STRING_AGG(cos.customer_id::varchar(6), ', ') 
from customer_onboarding_status cos
Where cos.onboarding_completion_date between '2023-03-01' and '2023-12-31';

--first customer of month
select  * --min(customer_id) 
from customer_onboarding_status cos 
Where cos.onboarding_completion_date between '2024-02-01' and '2024-02-29';
