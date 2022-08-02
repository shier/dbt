{{ config(materialized='view',schema='stg')}}
Select
	[ConnectTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ConnectType_Incr] 
Where [dbt_valid_to] is null