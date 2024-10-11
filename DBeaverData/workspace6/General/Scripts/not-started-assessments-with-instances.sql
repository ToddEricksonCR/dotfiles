
--In master run the following to find assessments that have not started
select STRING_AGG(c.id::varchar(6), ', ') 
from customers c 
left outer join customer_onboarding_status cos on c.id = cos.customer_id
where c.expiration_date > '2024-02-12' and cos.onboarding_completion_date is null
limit 100

--Paste the list of customer IDs in the in clause below and run in cctest to get assessments that have not started but have instances discovered
select * from customers c where id in (
select distinct(customerid) from cctest.public.customer_systems cs 
where customerid in (212282, 212283, 212228, 211729, 212078, 212262, 212226, 211977, 212066, 212263, 212281, 211432, 212276, 212251, 212196, 212279, 212265, 212261, 212147, 212267, 212225, 212239, 212280, 212274, 212236, 212119, 211675, 211747, 212013, 212195, 211361, 212213, 212087, 211992, 211436, 211685, 212164, 211505, 212176, 212200, 212172, 212173, 212178, 212205, 212171, 212185, 212215, 211520, 212214, 212069, 210999, 210966, 210892)
)

