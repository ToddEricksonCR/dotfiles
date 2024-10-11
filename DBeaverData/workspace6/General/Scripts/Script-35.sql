select created_date,* from customer_systems2() limit 50


select to_date(substring(assessment_parameters->>'processDataFromTime',3,11), 'yy/mm/dd') as startDate
from customers
    where to_date(substring(assessment_parameters->>'processDataFromTime',3,11), 'yy/mm/dd') >= current_date - 90

    
select * from customers c limit 10
    