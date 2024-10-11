
select distinct left(instance_type, position('.' in instance_type)-1)--, * 
from ec2_instance_type_info eiti 
where vendor = 1 
order by 1
limit 2


