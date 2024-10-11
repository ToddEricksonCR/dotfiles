--run on Master
select b.customer_id as cid,
    c.restricted_country as rc, -- TO_CHAR(b.expected_result_date :: DATE, ‘yyyy/mm/dd’) as expectDt,data_status, email,
    c.node_count_to_assess as Nn,
    TO_CHAR(b.expected_result_date :: DATE, 'yy/mm/dd') as expect_Dt,--‘yy/mm/dd’) as expectDt,
    data_status,computation_is_running as is_Compu,
    TO_CHAR(b.last_computed_date :: DATE, 'yy/mm/dd') as lastCompu_Dt,--‘yy/mm/dd’) as lastCompuDt,
    substring(b.app_processing_status->>'app_connectivity_processed_up_to',3,11) as mp_PreDt,
    substring(b.app_processing_status#>>'{app_post_processing,processedDataUpTo}',3,8) mp_PostDt,
    substring(assessment_parameters->>'processDataFromTime',3,11) as dc_SDt,
    substring(assessment_parameters->>'processDataUpToTime',3,11) as dc_EDt,
    email, is_AWS isAWS, is_Azure isAzure, is_google isGcp
    from (select * from customer_onboarding_status
    ) as b inner join
    (select * from customers
      where (restricted_country is null or restricted_country in ('US','DE','AE') )
    ) as c
    on b.customer_id = c.id
    where customer_id in (211229)
    
    


    
