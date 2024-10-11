select * from datasource_metadata dm where key = 'RAW32'

update datasource_metadata set is_active = false  where key = 'RAW32'