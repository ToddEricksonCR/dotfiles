--run on Cooked
SELECT d.customer_id, d.instance_id , a.instancename, d.summary_info, d.time, d.metric, d.metric_details1
FROM data_processing_state d
inner join awsinstances a on a.customerid = d.customer_id and a.instanceid = d.instance_id  
WHERE d.summary_info IS NOT NULL
AND d.summary_info::TEXT ilike '%failed%'
--AND d.customer_id in ( 210991)
--and summary_info::text not ilike ‘%getLinuxDiskCapUuid%’
--and instance_id in ( ‘v_esGHMBBF’)
--order by customer_id,instance_id
order by d.summary_info, d.instance_id,d.metric_details1
limit 100
						
--select * from awsinstances where customerid = 210949 and instancename = 'sec-ma7-msn'
