select distinct geo, region, sub_region from territories t 
order by geo, region, sub_region 
limit 200

select t.territory, t.enablement_manager, t.windows_specialist, t.smb, t.licensing_partner, t.licensing_partner_alias, t.windows_specialist_alias, 
	t.geo, t.region, t.sub_region, t.billing_country, t.biz_unit, t.billing_based_country, t.billing_based_region,
    lp.id, lp.licensing_partner , lp.licensing_partner_alias , lp.licensing_partner_account_id ,
    em.id , em.enablement_manager, em.enablement_manager_alias, em.enablement_manager_account_id  
from territories t 
left outer join licensing_partners lp on t.licensing_partner = lp.licensing_partner 
left outer join enablement_managers em  on t.enablement_manager  = em.enablement_manager  where territory = 'NAMED-AGS-NAMER-UNITED STATES-ENTERPRISE-CSC-C-02';

select * from territories t left outer join licensing_partners lp on t.licensing_partner = lp.licensing_partner 
left outer join enablement_managers em  on t.enablement_manager  = em.enablement_manager  where territory = 'NAMED-AGS-NAMER-UNITED STATES-ENTERPRISE-CSC-C-02';

select * from enablement_managers em 

select * from territories t 
left outer join licensing_partners lp on t.licensing_partner = lp.licensing_partner 
left outer join enablement_managers em  on t.enablement_manager  = em.enablement_manager  where territory ='NAMED-AGS-EMEA-Europe-Central-CS-ENT-Cross-141'

select * from territories t limit 200
