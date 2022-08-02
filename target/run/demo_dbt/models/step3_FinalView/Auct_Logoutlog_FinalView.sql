create view "stg"."Auct_Logoutlog_FinalView__dbt_tmp" as
    
Select
	[LogoutlogID],[UsersID],[Login],[Logout],[Created],[UpdateEventID] 
From stg.[Auct_Logoutlog_Incr] 
Where [dbt_valid_to] is null
