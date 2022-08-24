create view "stg"."Auct_Privilege_FinalView__dbt_tmp" as
    
Select
	[PrivilegeID],[Name],[Created],[UpdateEventID] 
From stg.[Auct_Privilege_Incr] 
Where [dbt_valid_to] is null
