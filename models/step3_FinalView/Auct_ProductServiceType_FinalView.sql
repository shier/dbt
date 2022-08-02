{{ config(materialized='view',schema='stg')}}
Select
	[ProductServiceTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_ProductServiceType_Incr] 
Where [dbt_valid_to] is null