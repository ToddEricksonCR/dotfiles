-- CREATE DATABASE metabase CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- List of new columns added to Corteza
select  CONCAT("'", cm.name, "'") , 
cm.name, cmf.name , cmf.created_at, cmf.updated_at, cmf.*
from corteza.compose_module_field cmf 
inner join corteza.compose_module cm on cmf.rel_module = cm.id
-- where cmf.name like 'NodeCount%'
-- and cmf.name = 'OpportunityId' -- and cmf.created_at > '2024-06-01'  
order by cmf.created_at desc -- cm.name, cmf.created_at, id


select cm.name, cmf.name , cmf.created_at, cmf.updated_at, cmf.*
from corteza.compose_module_field cmf 
inner join corteza.compose_module cm on cmf.rel_module = cm.id
where cmf.name like '%Id' -- cmf.created_at > '2024-06-01' and cm.name like 'work%'
 and cm.name in ('DeliveryInformation',
'Event',
'Note',
'OpportunityCompetitor',
'OpportunityContactRole',
'OpportunityDelivery',
'OpportunityLineItem',
'Quote',
'Rev Rec Line Item',
'Task',
'Work Unit Costs')
order by cm.name, cmf.created_at, id



select * from corteza.compose_page_layout cpl 

select * from metabase.query q 

select count(*) from cr_crm_RevRecLineItem_revisions ccrrlir 
select count(*) from cr_crm_RevRecLineItem

select * from cr_crm_OpportunityLineItem cr where id >= 394395629612367873 limit 10
select * from cr_crm_Opportunity cco 
select * from corteza.dal_connections dc 

SELECT 
    table_name AS `Table`, 
    table_rows AS `Rows`
FROM 
    information_schema.tables
WHERE 
    table_schema = DATABASE()
ORDER BY 
    table_rows DESC;

Select * from cr_crm_Contact ccc 
