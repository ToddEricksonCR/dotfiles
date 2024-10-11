

-- public.erp_systems definition

-- Drop table

-- DROP TABLE public.erp_systems;

CREATE TABLE public.erp_systems (
	customer_id int4,
	instance_id varchar(1024),
	erp_type varchar(1024),
	erp_process_name text NULL,
	time_last_seen timestamp null,
	CONSTRAINT erp_systems_pkey PRIMARY KEY(customer_id, instance_id, erp_type)
);
CREATE INDEX erp_systems_customer_idx ON public.erp_systems USING btree (customer_id);
CREATE INDEX erp_systems_instance_idx ON public.erp_systems USING btree (instance_id);
CREATE INDEX erp_systems_customer_instnace_idx ON public.erp_systems USING btree (customer_id, instance_id);


