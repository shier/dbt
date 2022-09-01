create view "stg"."Auct_CarTransMission_FinalView__dbt_tmp" as
    
Select
	[CarTransMissionID],[Name],[Created],[UpdateEventID],[Active],[WebActive] 
From stg.[Auct_CarTransMission_Incr] 
Where [dbt_valid_to] is null
