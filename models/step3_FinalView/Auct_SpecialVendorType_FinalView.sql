{{ config(materialized='view',schema='stg')}}
Select
	[SpecialVendorTypeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_SpecialVendorType_Incr] 
Where [dbt_valid_to] is null