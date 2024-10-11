CREATE INDEX IF NOT EXISTS installed_applications_application_display_name_idx ON migrator.installed_applications (application_display_name,customer_id);

--DROP MATERIALIZED VIEW IF EXISTS migrator.customer_euc_counts

CREATE MATERIALIZED VIEW IF NOT EXISTS  migrator.customer_euc_counts AS
    SELECT 
        c.id::int as customer_id, 
        c.company::text as company, 
        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%VMware Horizon%' THEN 1 ELSE 0 END), 0)::INT AS count_of_vmwarehorizon_systems,
        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%XenDesktop%' AND ia.vendor_display_name = 'Citrix Systems' THEN 1 ELSE 0 END), 0)::INT AS count_of_xendesktop_systems,
        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%Citrix XenApp%' THEN 1 ELSE 0 END), 0)::INT AS count_of_citrix_xenapp_systems,
        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%Remote Desktop%' THEN 1 ELSE 0 END), 0)::INT AS count_of_remotedesktop_systems
    FROM 
        public.customers c
    LEFT JOIN 
        migrator.installed_applications ia ON c.id = ia.customer_id
    GROUP BY 
        c.id, c.company
    HAVING 
        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%VMware Horizon%' THEN 1 ELSE 0 END), 0) > 0 OR
        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%XenDesktop%' AND ia.vendor_display_name = 'Citrix Systems' THEN 1 ELSE 0 END), 0) > 0 OR
        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%Citrix XenApp%' THEN 1 ELSE 0 END), 0) > 0 OR
        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE '%Remote Desktop%' THEN 1 ELSE 0 END), 0) > 0
        
    union  
    --Records from EU
	SELECT *
	    FROM dblink('host=''10.1.86.104'' dbname=''vmware'' user=''postgres'' password=''qy8VSv67xeAywm''', 
	    '    SELECT 
	        c.id::INT as customer_id, 
	        c.company as company, 
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%VMware Horizon%'' THEN 1 ELSE 0 END), 0)::INT AS count_of_vmwarehorizon_systems,
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%XenDesktop%'' AND ia.vendor_display_name = ''Citrix Systems'' THEN 1 ELSE 0 END), 0)::INT AS count_of_xendesktop_systems,
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%Citrix XenApp%'' THEN 1 ELSE 0 END), 0)::INT AS count_of_citrix_xenapp_systems,
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%Remote Desktop%'' THEN 1 ELSE 0 END), 0)::INT AS count_of_remotedesktop_systems
	    FROM 
	        public.customers c
	    LEFT JOIN 
	        migrator.installed_applications ia ON c.id = ia.customer_id
	    GROUP BY 
	        c.id, c.company
	    HAVING 
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%VMware Horizon%'' THEN 1 ELSE 0 END), 0) > 0 OR
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%XenDesktop%'' AND ia.vendor_display_name = ''Citrix Systems'' THEN 1 ELSE 0 END), 0) > 0 OR
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%Citrix XenApp%'' THEN 1 ELSE 0 END), 0) > 0 OR
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%Remote Desktop%'' THEN 1 ELSE 0 END), 0) > 0' ) 
	    as t1(customer_id int, company text, count_of_vmwarehorizon_systems int, count_of_xendesktop_systems int, count_of_citrix_xenapp_systems int, count_of_remotedesktop_systems int)
	
    union  
    --Records from UAE
	SELECT *
	    FROM dblink('host=''10.1.134.101'' dbname=''vmware'' user=''postgres'' password=''qy8VSv67xeAywm''', 
	    '    SELECT 
	        c.id::INT as customer_id, 
	        c.company as company, 
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%VMware Horizon%'' THEN 1 ELSE 0 END), 0)::INT AS count_of_vmwarehorizon_systems,
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%XenDesktop%'' AND ia.vendor_display_name = ''Citrix Systems'' THEN 1 ELSE 0 END), 0)::INT AS count_of_xendesktop_systems,
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%Citrix XenApp%'' THEN 1 ELSE 0 END), 0)::INT AS count_of_citrix_xenapp_systems,
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%Remote Desktop%'' THEN 1 ELSE 0 END), 0)::INT AS count_of_remotedesktop_systems
	    FROM 
	        public.customers c
	    LEFT JOIN 
	        migrator.installed_applications ia ON c.id = ia.customer_id
	    GROUP BY 
	        c.id, c.company
	    HAVING 
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%VMware Horizon%'' THEN 1 ELSE 0 END), 0) > 0 OR
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%XenDesktop%'' AND ia.vendor_display_name = ''Citrix Systems'' THEN 1 ELSE 0 END), 0) > 0 OR
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%Citrix XenApp%'' THEN 1 ELSE 0 END), 0) > 0 OR
	        COALESCE(SUM(CASE WHEN ia.application_display_name ILIKE ''%Remote Desktop%'' THEN 1 ELSE 0 END), 0) > 0' ) 
	    as t2(customer_id int, company text, count_of_vmwarehorizon_systems int, count_of_xendesktop_systems int, count_of_citrix_xenapp_systems int, count_of_remotedesktop_systems int)
	
	
refresh MATERIALIZED VIEW migrator.customer_euc_counts


select * from migrator.customer_euc_counts order by customer_id desc 

