create view "stg"."Auct_MediaPosition_FinalView__dbt_tmp" as
    
Select
	[MediaPositionID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_MediaPosition_Incr] 
Where [dbt_valid_to] is null
