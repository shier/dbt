{{ config(materialized='view',schema='stg')}}
Select
	[RequestTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_RequestType_Incr] 
Where [dbt_valid_to] is null