{{ config(materialized='view',schema='stg')}}
Select
	[AvailableOptionsID],[CarOptionID],[CarModelID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableOptions_Incr] 
Where [dbt_valid_to] is null