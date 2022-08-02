create view "stg"."Auct_UsersKey_FinalView__dbt_tmp" as
    
Select
	[UsersKeyID],[UsersID],[SessionID],[IpAddress],[LastActivity],[Created],[UpdateEventID] 
From stg.[Auct_UsersKey_Incr] 
Where [dbt_valid_to] is null
