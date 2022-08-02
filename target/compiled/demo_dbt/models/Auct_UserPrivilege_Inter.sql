
Select
	[CREATED] [Created],
	[USERSPRIVILEGEID] [UsersPrivilegeID],
	[USERSID] [UsersID],
	[PRIVILEGEID] [PrivilegeID],
	[UPDATEEVENTID] [UpdateEventID],
	cast([DENY] as nvarchar(4000)) [Deny]
From stg.[Auct_UserPrivilege_Raw]