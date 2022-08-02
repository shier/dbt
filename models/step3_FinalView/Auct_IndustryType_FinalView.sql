{{ config(materialized='view',schema='stg')}}
Select
	[IndustryTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_IndustryType_Incr] 
Where [dbt_valid_to] is null