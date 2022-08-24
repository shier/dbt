{{ config(materialized='view',schema='stg')}}
Select
	[AvailableTransMissionID],[CarTransMissionID],[CarModelID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableTransMission_Incr] 
Where [dbt_valid_to] is null