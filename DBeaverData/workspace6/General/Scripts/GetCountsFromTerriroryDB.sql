/*
truncate table territories;
truncate table licensing_partners;
truncate table enablement_managers;
*/

--insert into licensing_partners (licensing_partner, licensing_partner_alias) select distinct licensing_partner , licensing_partner_alias from territories where licensing_partner is not null;
--insert into enablement_managers (enablement_manager) select distinct enablement_manager  from territories where enablement_manager  is not null;

select * from territories t where territory ='NAMED-AGS-NAMER-UNITED STATES-ENTERPRISE-CSC-C-02'

select * from territories t left outer join licensing_partners lp on t.licensing_partner = lp.licensing_partner left outer join enablement_managers em  on t.enablement_manager  = em.enablement_manager  where territory ='NAMED-AGS-EMEA-Europe-Central-CS-ENT-Cross-141'
select mp.name, mp.alternative_email, mp.email from partners_territories pt, migration_partners mp  where pt.email_address = mp.email  and territory ='NAMED-AGS-EMEA-Europe-Central-CS-ENT-Cross-141'

select * from partners_territories pt limit 10
select * from territories t limit 10



select 
(select count(1) from territories t) as territories,
(select count(1) from territories_backup tb) as territories_backup,
(select count(1) from territories_test tt) as territories_test,
(select count(1) from countries c) as countries,
(select count(1) from enablement_managers em ) as enablement_managers,
(select count(1) from licensing_partners lp ) as licensing_partners,
(select count(1) from migration_partners mp ) as migration_partners,
(select count(1) from partners_territories pt)  as partners_territories


select * from partners_territories pt limit 200

select distinct enablement_manager  from territories where enablement_manager  is not NULL


select * from territories t 
left outer join licensing_partners lp on t.licensing_partner = lp.licensing_partner 
left outer join enablement_managers em  on t.enablement_manager  = em.enablement_manager  
--where territory = $1
LIMIT 50
select distinct licensing_partner_alias from territories t2 

select distinct mp.name, mp.alternative_email, mp.email from partners_territories pt, migration_partners mp  where pt.email_address = mp.email 
limit 500

select * from enablement_managers em 

select count(1) from territories t where enablement_manager = 'Mauro Parada crespo'


select * from territories t where t.territory ilike 'NAMED-AGS-NAMER-UNITED STATES-ISV-BIZAPPS-EAST-B-06'
ENT-MID-US-WEST-RMP-MXD-MTNENTB04

select distinct enablement_manager from territories

select * from enablement_managers em 
update territories set enablement_manager = 'Valerie Rosenfield' where enablement_manager = 'Val Rosenfield'

