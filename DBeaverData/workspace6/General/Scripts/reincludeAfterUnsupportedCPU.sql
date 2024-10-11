--this query re-includes instances that were excluded because of an unsupported CPU
--If the assessment has laready been delivered, something has to be done manually in Matlab to reprocess.
--If the assessmnet has not been delivered (or just the preliminary assessment is dine) it will be picked up and reprocessed automatically


select is_visible, disabled_reason, is_deleted_from_ui, * from awsinstances where customerid = 211990 and disabled_reason ilike '%User Disabled%' and is_deleted_from_ui = true;

update awsinstances set is_visible=true,monitorignstatus='YES',disabled_reason=NULL where customerid = 211554 and disabled_reason ilike '%Unsupported CPU%';

update awsinstances set is_deleted_from_ui = false where customerid = 211990 and disabled_reason ilike '%User Disabled%' and is_deleted_from_ui = true;

select instancename from awsinstances where customerid = 211990 and instanceid in (
'v_Neb3rCxa',
'ysA48RhN_211990.vm-268702.211990',
'ysA48RhN_211990.vm-387990.211990')



select is_visible, disabled_reason, is_deleted_from_ui, * from awsinstances where customerid = 211990 and disabled_reason ilike '%User Disabled%';

select is_visible, disabled_reason, is_deleted_from_ui, * from awsinstances where disabled_reason ilike '%Unsupported CPU%' order by customerid desc limit 20;
select customerid,  disabled_reason,  lastupdated--, * 
from awsinstances where disabled_reason ilike '%Unsupported CPU%' order by lastupdated desc limit 10;

select is_visible, disabled_reason, is_deleted_from_ui, * from awsinstances  order by lastupdated desc limit 200;

