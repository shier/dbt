{{ config(materialized='view',schema='stg')}}
Select
	[VendorTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_VendorType_Incr] 
Where [dbt_valid_to] is null