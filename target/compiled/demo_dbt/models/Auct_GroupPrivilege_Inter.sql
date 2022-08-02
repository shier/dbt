
Select
	[GROUPID] [GroupID],
	[PRIVILEGEID] [PrivilegeID],
	[UPDATEEVENTID] [UpdateEventID],
	[CREATED] [Created],
	cast([DENY] as nvarchar(4000)) [Deny]
From stg.[Auct_GroupPrivilege_Raw]