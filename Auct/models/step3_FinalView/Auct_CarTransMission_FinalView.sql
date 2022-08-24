{{ config(materialized='view',schema='stg')}}
Select
	[CarTransMissionID],[Name],[Created],[UpdateEventID],[Active],[WebActive] 
From stg.[Auct_CarTransMission_Incr] 
Where [dbt_valid_to] is null