insert into user_order_mapping(customer_email, assigned_to, assigned_by) 
values('unitestudents@cloudamize.com',2329,2329)

delete from user_order_mapping where customer_email = 'unitestudents@cloudamize.com'

select * from user_order_mapping where assigned_to in(2045,
1674,
1517,
1616,
1716,
1363,
1972,
663,
748,
1468,
1308,
714,
982,
2609,
2329,
2499,
2525)

select * from user_order_mapping where customer_email not like 'cancelled%'

