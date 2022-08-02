
Select
	[EnablementLogID],[Reason],[Enabled],[Created],[UsersID],[UpdateEventID] 
From stg.[Auct_EnablementLog_Incr] 
Where [dbt_valid_to] is null