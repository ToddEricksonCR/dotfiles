select * from  metabase.metabase_field md 

select * from dependency d 

select * from cr_crm_Product



    SELECT
      `cr_crm_Product`.`id` AS `id`,
      `cr_crm_Product`.`created_at` AS `created_at`,
      `cr_crm_Product`.`deleted_at` AS `deleted_at`,
      `cr_crm_Product`.`updated_at` AS `updated_at`,
      `cr_crm_Product`.`created_by` AS `created_by`,
      `cr_crm_Product`.`deleted_by` AS `deleted_by`,
      `cr_crm_Product`.`meta` AS `meta`,
      `cr_crm_Product`.`owned_by` AS `owned_by`,
      `cr_crm_Product`.`revision` AS `revision`,
      `cr_crm_Product`.`updated_by` AS `updated_by`-- ,
--       JSON_UNQUOTE(
--         JSON_EXTRACT(`cr_crm_Product`.`values`, '$."Name"[0]')
--       ) AS `Name`,
--       JSON_UNQUOTE(
--         JSON_EXTRACT(`cr_crm_Product`.`values`, '$."ProductCode"[0]')
--       ) AS `ProductCode`,
--       JSON_UNQUOTE(
--         JSON_EXTRACT(`cr_crm_Product`.`values`, '$."Family"[0]')
--       ) AS `Family`,
--       JSON_UNQUOTE(
--         JSON_EXTRACT(`cr_crm_Product`.`values`, '$."Description"[0]')
--       ) AS `Description`,
--       JSON_UNQUOTE(
--         JSON_EXTRACT(`cr_crm_Product`.`values`, '$."IsActive"[0]')
--       ) AS `IsActive`,
--       JSON_UNQUOTE(
--         JSON_EXTRACT(
--           `cr_crm_Product`.`values`,
--           '$."EntitlementTemplateId"[0]'
--         )
--       ) AS `EntitlementTemplateId`,
--       CONVERT(
--         JSON_UNQUOTE(
--           JSON_EXTRACT(
--             `cr_crm_Product`.`values`,
--             '$."DefaultSalesPrice"[0]'
--           )
--         ),
--         UNSIGNED
--       ) AS `DefaultSalesPrice`,
--       CONVERT(
--         JSON_EXTRACT(
--           `cr_crm_Product`.`values`,
--           '$."RevenueRecognitionProfile"[0]'
--         ),
--         UNSIGNED
--       ) AS `RevenueRecognitionProfile`,
--       JSON_UNQUOTE(
--         JSON_EXTRACT(`cr_crm_Product`.`values`, '$."Designation"[0]')
--       ) AS `Designation`,
--       JSON_UNQUOTE(
--         JSON_EXTRACT(`cr_crm_Product`.`values`, '$."SFDCProductID"[0]')
--       ) AS `SFDCProductID`
    FROM
      `cr_crm_Product`
    WHERE
      `cr_crm_Product`.`deleted_at` IS NULL
      