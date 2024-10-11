
select user_id, email, password, first_name, last_name, company, phone, role_id, title, is_temp_password, last_updated, parent_user_id, global_partner, user_type, account_type, demo_iaas_providers, activation_token, is_activated, token_creation_time, source_ip_from_request, overview_dashboard_user_id, association_with_overview_dashboard, show_terms_checkbox, is_new_account, self_service_step_id, auto_open_self_service_dialog, free_poc_node_count, user_type_mapping_id, allowed_to_create_orders 

create view users3 as
select user_id, email, password, first_name, last_name, company, phone, role_id, title, is_temp_password, last_updated, parent_user_id, global_partner, user_type, account_type, demo_iaas_providers, activation_token, is_activated, token_creation_time, source_ip_from_request, overview_dashboard_user_id, association_with_overview_dashboard, show_terms_checkbox, is_new_account, self_service_step_id, auto_open_self_service_dialog, free_poc_node_count, user_type_mapping_id, allowed_to_create_orders, '' as Zendesk_user_id, '' as Talentlms_user_details
from dblink('dbname=master user=postgres password=FNamsdbvU7Yakv' ,'SELECT user_id, email, password, first_name, last_name, company, phone, role_id, title, is_temp_password, last_updated, parent_user_id, global_partner, user_type, account_type, demo_iaas_providers, activation_token, is_activated, token_creation_time, source_ip_from_request, overview_dashboard_user_id, association_with_overview_dashboard, show_terms_checkbox, is_new_account, self_service_step_id, auto_open_self_service_dialog, free_poc_node_count, user_type_mapping_id, allowed_to_create_orders 
 FROM user_accounts') 
     AS user_accounts(
     		user_id int4,
			email varchar(255),
			password varchar(1000),
			first_name varchar(255),
			last_name varchar(255),
			company varchar(255),
			phone varchar(255),
			role_id int4,
			title varchar(255),
			is_temp_password bool,
			last_updated timestamp,
			parent_user_id int4,
			global_partner bool,
			user_type int4,
			account_type varchar(21),
			demo_iaas_providers varchar(255),
			activation_token varchar(512),
			is_activated bool,
			token_creation_time timestamp,
			source_ip_from_request varchar(255),
			overview_dashboard_user_id int4,
			association_with_overview_dashboard bool,
			show_terms_checkbox bool,
			is_new_account bool,
			self_service_step_id int4,
			auto_open_self_service_dialog bool,
			free_poc_node_count int4,
			user_type_mapping_id int4,
			allowed_to_create_orders bool)
where role_id in (1,2,3)
 
select * from users2


-- public.users definition

-- Drop table

-- DROP TABLE public.users;

CREATE TABLE public.users (
	user_id int4 DEFAULT nextval('user_user_seq'::regclass) NOT NULL,
	email varchar(255) NOT NULL,
	"password" varchar(1000) NOT NULL,
	first_name varchar(255) NULL,
	last_name varchar(255) NULL,
	company varchar(255) NULL,
	phone varchar(255) NULL,
	role_id int4 NOT NULL,
	title varchar(255) NULL,
	is_temp_password bool NULL,
	last_updated timestamp DEFAULT now() NULL,
	parent_user_id int4 NULL,
	global_partner bool DEFAULT false NOT NULL,
	user_type int4 NULL,
	account_type varchar(21) DEFAULT 'normal'::character varying NULL,
	demo_iaas_providers varchar(255) NULL,
	activation_token varchar(512) NULL,
	is_activated bool DEFAULT false NULL,
	token_creation_time timestamp DEFAULT now() NULL,
	source_ip_from_request varchar(255) NULL,
	overview_dashboard_user_id int4 NULL,
	association_with_overview_dashboard bool DEFAULT false NULL,
	show_terms_checkbox bool DEFAULT false NULL,
	zendesk_user_id int8 NULL,
	is_new_account bool DEFAULT true NULL,
	self_service_step_id int4 DEFAULT 1 NULL,
	auto_open_self_service_dialog bool DEFAULT true NULL,
	free_poc_node_count int4 NULL,
	user_type_mapping_id int4 DEFAULT 1 NOT NULL,
	allowed_to_create_orders bool DEFAULT true NULL,
	CONSTRAINT pkey_users_id PRIMARY KEY (user_id)
);