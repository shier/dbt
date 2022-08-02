create view "stg"."Auct_Space_FinalView__dbt_tmp" as
    
Select
	[SpaceID],[Name],[BoothID],[SpaceSizeID],[AllocatedPower],[Created],[UpdateEventID],[Phonein],[WiredInternet],[WirelessInternet] 
From stg.[Auct_Space_Incr] 
Where [dbt_valid_to] is null
