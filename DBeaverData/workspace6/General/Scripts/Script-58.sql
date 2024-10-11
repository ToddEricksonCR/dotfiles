

SELECT 
CONCAT('''', t.territory, ''',') 
FROM territories_backup tb 

inner join territories t on t.territory = tb.territory
where tb.enablement_manager = 'Chris Kavanagh'
and t.enablement_manager = 'Val Rosenfield'

LIMIT 10


Val Rosenfield