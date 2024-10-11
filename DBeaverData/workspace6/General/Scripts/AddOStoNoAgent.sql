select * from machine_info 
where  machine_type =3 and customer_id =211236 and instance_id in ('10.198.18.23','10.198.35.62')
limit 100

 --Run the below on the EU Cooked
update machine_info set host_name = 'google-home.lan - Linux 2.6.32 - 3.10' where  machine_type =3 and customer_id =211236 and instance_id = '10.198.18.23'
update machine_info set host_name = '10.198.35.62 - FreeNAS 0.69RC2 (FreeBSD 6.4-RELEASE)' where  machine_type =3 and customer_id =211236 and instance_id = '10.198.35.62'

update machine_info set host_name = '10.198.18.23' where  machine_type =3 and customer_id =211236 and instance_id = '10.198.18.23'
update machine_info set host_name = '10.198.35.62' where  machine_type =3 and customer_id =211236 and instance_id = '10.198.35.62'

10.198.35.62

select * from network_discovery_data ndd 