--Cooked DB
select * from  public.ec2_instance_type_info where vendor = 1 and instance_type ilike 'g%' limit 100
