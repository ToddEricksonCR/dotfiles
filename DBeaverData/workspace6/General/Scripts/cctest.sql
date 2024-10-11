update customers set raw_database_key = 'RAW34' where id = 211434  --<< replace Raw DB and customer ID
update customers set raw_database_key = 'GERMANY_RAW2' where raw_database_key = 'RAW34' and id in (211434)
