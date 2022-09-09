{{ config(materialized='view',schema='stg')}}
Select
	[AvailableStyleID],[CarModelID],[CarStyleID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableStyle_Incr] 
Where [dbt_valid_to] is null