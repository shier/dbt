create view "stg"."Auct_UserPrivilege_FinalView__dbt_tmp" as
    
Select
	[UsersPrivilegeID],[UsersID],[PrivilegeID],[Deny],[Created],[UpdateEventID] 
From stg.[Auct_UserPrivilege_Incr] 
Where [dbt_valid_to] is null
