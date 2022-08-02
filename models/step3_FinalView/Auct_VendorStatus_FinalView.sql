{{ config(materialized='view',schema='stg')}}
Select
	[VendorStatusID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_VendorStatus_Incr] 
Where [dbt_valid_to] is null