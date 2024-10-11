select * from territories t where enablement_manager = 'Malathi Janakiraman'
limit 50

update territories t set enablement_manager = 'Aditya Shelke' where enablement_manager = 'Malathi Janakiraman'

update territories t set enablement_manager = 'Chris Kavanagh' where enablement_manager = 'Josh Miller'


delete from enablement_managers em where enablement_manager in ('Malathi Janakiraman','Josh Miller')

select * from territories t 

select * from partners_territories
