{{ config(materialized='view',schema='stg')}}
Select
	[ODOMeterReadingID],[CarID],[ReadingTypeID],[Reading],[DateRead],[ReadByContactID],[Created],[UpdateEventID] 
From stg.[Auct_ODOMeterReading_Incr] 
Where [dbt_valid_to] is null