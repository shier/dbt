create view "stg"."Auct_GroupPrivilege_FinalView__dbt_tmp" as
    
Select
	[GroupID],[PrivilegeID],[Deny],[Created],[UpdateEventID] 
From [Auct_GroupPrivilege_Incr] 
Where [dbt_valid_to] is null
