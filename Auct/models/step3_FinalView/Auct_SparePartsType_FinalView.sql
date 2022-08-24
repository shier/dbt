{{ config(materialized='view',schema='stg')}}
Select
	[SparePartsTypeID],[Name],[InActive],[Created],[UpdateEventID] 
From stg.[Auct_SparePartsType_Incr] 
Where [dbt_valid_to] is null