select * 
from 
migrator.all_instances(210975)

select * from awsinstances where customerid = 210975;-- limit 200;
select * from machine_info where customer_id = 210975;-- limit 200;

select count(*) from awsinstances where customerid = 210975;  --309
select count(*) from machine_info where customer_id = 210975; --840

select * from migrator.application_tags where customer_id = 210975;
select * from migrator.migration_tags_new mt where customer_id = 210975;

select * from migrator.application_view_mapping avm where customer_id = 210975;
select * from migrator.application_view_apps_to_break_by_host avatbbh where customer_id = 210975; --empty

select * from migrator.survey_questions sq ;
select * from migrator.survey_answer sa  ;

select * from migrator.get_application_data_with_cost_and_tags(210975,1)

select * from machine_tags mt 

{"instances": {"v_gpTLlzKz": {"assetId": 19935, "groupId": 100, "instanceId": "v_gpTLlzKz", "tagsDuplicatedKeyAllowed": {"Key1": ["Value1"]}}, "v_nzbjGD7y": {"assetId": 19935, "groupId": 100, "instanceId": "v_nzbjGD7y", "tagsDuplicatedKeyAllowed": {"Key1": ["Java"]}}, "v_sBDdI1NE": {"assetId": 19925, "groupId": 3, "instanceId": "v_sBDdI1NE", "tagsDuplicatedKeyAllowed": {"Key1": ["Java"]}}, "v_sjOK3qg1": {"assetId": 19935, "groupId": 100, "instanceId": "v_sjOK3qg1", "tagsDuplicatedKeyAllowed": {"Key1": ["Java"]}}, "v_z16i5XQ2": {"assetId": 19935, "groupId": 100, "instanceId": "v_z16i5XQ2", "tagsDuplicatedKeyAllowed": {"Key1": ["Java"]}}}}
{"appNodes": {"Java": {"tags": {"Key1": ["Java"], "Key2": ["Java2"]}, "appIdentifier": "Java"}, "MySQL Server": {"tags": {"Key1": ["Value1"], "Key2": ["Value2"]}, "appIdentifier": "MySQL Server"}}}


SELECT distinct customer_id FROM machine_tags
select * from machine_tags mt 

