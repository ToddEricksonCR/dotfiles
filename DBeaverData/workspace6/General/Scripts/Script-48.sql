select spi.instance_id, * from server_process_info spi 
where web_site_info_id is not null
--group by spi.instance_id having count(*)>3
limit 200

select * from web_site_info wsi where id in (201649,
201650,
201651)

select * from web_site_info wsi where customer_id = 211676 and instance_id = 'v_E8b7ZiEc'

select * from server_process_info spi 
inner join web_site_info wsi on spi.web_site_info_id[1] = wsi.id 
where web_site_info_id is not null
and spi.customer_id = 211566 and spi.instance_id in ('v_AcpRIjFk','v_9tlovcuG','v_BR6cpYIg')
limit 10


select * from server_process_info spi 
inner join web_site_info wsi on spi.web_site_info_id[1] = wsi.id 
where web_site_info_id is not null
and spi.customer_id = 211566 -- and spi.instance_id in ('v_AcpRIjFk','v_9tlovcuG','v_BR6cpYIg')
limit 100