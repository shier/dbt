create view "stg"."Auct_UsersGroup_FinalView__dbt_tmp" as
    
Select
	[UsersGroupID],[UsersID],[GroupID],[Created],[UpdateEventID] 
From stg.[Auct_UsersGroup_Incr] 
Where [dbt_valid_to] is null
