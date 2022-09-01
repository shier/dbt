{{ config(materialized='view',schema='stg')}}
Select
	[AvailableTrimID],[CarTrimID],[CarModelID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableTrim_Incr] 
Where [dbt_valid_to] is null