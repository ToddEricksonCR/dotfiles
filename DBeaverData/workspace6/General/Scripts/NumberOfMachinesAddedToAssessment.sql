-- this query gets the Number of machines added after first machine was added
-- run this query on the cctest DB on Master
SELECT
    customerID,
    COUNT(CASE WHEN days_after_start BETWEEN 0 AND 5 THEN instanceid END) AS "0-5_days",
    COUNT(CASE WHEN days_after_start BETWEEN 6 AND 10 THEN instanceid END) AS "6-10_days",
    COUNT(CASE WHEN days_after_start BETWEEN 11 AND 15 THEN instanceid END) AS "11-15_days",
    COUNT(CASE WHEN days_after_start BETWEEN 16 AND 20 THEN instanceid END) AS "16-20_days",
    COUNT(CASE WHEN days_after_start BETWEEN 21 AND 25 THEN instanceid END) AS "21-25_days",
    COUNT(CASE WHEN days_after_start BETWEEN 26 AND 30 THEN instanceid END) AS "26-30_days",
    COUNT(CASE WHEN days_after_start > 30 THEN instanceid END) AS "30+_days"
FROM (
	select  cs.customerid, cs.instanceid, (cs.created_date::date - cs2.startdate::date) as days_after_start
	from customer_systems cs
	inner join (
		select customerid, min(created_date) as startdate from customer_systems cs
		where customerid >212000
		group by customerid ) as cs2 on cs.customerid = cs2.customerid
	) a
group by 
customerid
order by customerid desc 
