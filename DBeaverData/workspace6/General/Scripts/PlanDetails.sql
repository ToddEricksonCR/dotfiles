select display_name , plan_id ,* from plan_details pd where customer_id = 212629
order by display_name , plan_id 

select display_name , plan_id ,* from plan_details pd where customer_id in(
212689,
212560,
212561,
212563,
212564,
212568,
212569,
212570,
212572,
212576,
212578,
212579,
212582,
212584,
212586,
212588,
212589,
212590,
212592,
212593,
212596,
212597,
212598,
212600)
order by customer_id , plan_id 
