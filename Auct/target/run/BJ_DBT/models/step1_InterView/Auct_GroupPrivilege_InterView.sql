create view "dbo_stg"."Auct_GroupPrivilege_InterView__dbt_tmp" as
    
Select
	[GROUPID] [GroupID],
	[PRIVILEGEID] [PrivilegeID],
	cast([DENY] as nvarchar(4000)) [Deny],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_GroupPrivilege_Raw]
