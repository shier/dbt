create view "stg"."Auct_UserPrivileges_FinalView__dbt_tmp" as
    
Select
	[UsersID],[PrivilegeID] 
From [Auct_UserPrivileges_Incr]
