create view "stg"."Auct_EnablementLog_FinalView__dbt_tmp" as
    
Select
	[EnablementLogID],[UsersID],[Enabled],[Reason],[Created],[UpdateEventID] 
From stg.[Auct_EnablementLog_Incr] 
Where [dbt_valid_to] is null
