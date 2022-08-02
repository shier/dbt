create view "stg"."Auct_AvailableTransMission_FinalView__dbt_tmp" as
    
Select
	[AvailableTransMissionID],[CarTransMissionID],[CarModelID],[AllowDropDown],[Created],[UpdateEventID] 
From stg.[Auct_AvailableTransMission_Incr] 
Where [dbt_valid_to] is null
