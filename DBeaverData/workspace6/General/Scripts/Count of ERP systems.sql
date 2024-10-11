select es.customer_id, c.company, es.number_of_ebs, es.number_of_peoplesoft, es.number_of_jde, es.number_of_hyperion, es.number_of_sap, es.number_of_oracle
from (
select customer_id
	 , count(case when has_ebs        then 1 end) as number_of_ebs
     , count(case when has_peoplesoft then 1 end) as number_of_peoplesoft
     , count(case when has_jde        then 1 end) as number_of_jde
     , count(case when has_hyperion   then 1 end) as number_of_hyperion
     , count(case when has_sap        then 1 end) as number_of_sap
     , count(case when has_oracle     then 1 end) as number_of_oracle
from erp_systems
group by customer_id) as es
inner join customers c on c.id = es.customer_id


select es.customer_id, c.company, a.instancename , a.platform , es.has_ebs, es.has_peoplesoft, es.has_jde, es.has_hyperion, es.has_sap, es.has_oracle--, es.time_last_seen -- * 
from erp_systems es
inner join awsinstances a on es.customer_id = a.customerid and es.instance_id = a.instanceid 
inner join customers c on c.id = es.customer_id
where es.customer_id in ('211437','211404','211450','210757','211270') 
and es.has_sap = true

select min(time_last_seen) from erp_systems es limit 5
