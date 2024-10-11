
select is_current, is_active, * from datasource_metadata
where db_type = 'ESTIMATOR'
  and is_current = true
--where key in ('RAW33','GERMANY_RAW1') 
--where key in ('RAW34','GERMANY_RAW2') 
where key in ('RAW33','GERMANY_RAW1','RAW34','GERMANY_RAW2') 

--update datasource_metadata set is_current = false where key in ('RAW33','GERMANY_RAW1') 
--update datasource_metadata set is_current = true where key in ('RAW34','GERMANY_RAW2') 


--update datasource_metadata set is_current = false where key = 'RAW33'--<< Specify RAW DB


select * from datasource_metadata
