select * from resource_activity_log
select * from actionlog a 

-- dbname.compose_record definition

CREATE TABLE `compose_record` (
  `id` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL DEFAULT '0',
  `rel_module` bigint unsigned NOT NULL,
  `values` json NOT NULL,
  `meta` json NOT NULL,
  `rel_namespace` bigint unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `owned_by` bigint unsigned NOT NULL DEFAULT '0',
  `created_by` bigint unsigned NOT NULL DEFAULT '0',
  `updated_by` bigint unsigned NOT NULL DEFAULT '0',
  `deleted_by` bigint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- dbname.compose_record_revisions definition

CREATE TABLE `compose_record_revisions` (
  `id` bigint unsigned NOT NULL,
  `ts` datetime NOT NULL,
  `rel_resource` bigint unsigned NOT NULL,
  `revision` decimal(10,0) NOT NULL,
  `operation` text NOT NULL,
  `rel_user` bigint unsigned NOT NULL DEFAULT '0',
  `delta` json NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

truncate table actionlog;
truncate table resource_activity_log;
