
Select
	cast([GroupID] as int) [GROUPID],
	cast([PrivilegeID] as int) [PRIVILEGEID],
	cast([Deny] as nvarchar(4000)) [DENY],
	cast([Created] as DATETIME) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_GroupPrivilege_FinalView]