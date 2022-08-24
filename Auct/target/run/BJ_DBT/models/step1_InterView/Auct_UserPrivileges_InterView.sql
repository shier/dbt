create view "dbo_stg"."Auct_UserPrivileges_InterView__dbt_tmp" as
    
Select
	[UsersID] [UsersID],
	[PrivilegeID] [PrivilegeID]
From stg.[Auct_UserPrivileges_Raw]
