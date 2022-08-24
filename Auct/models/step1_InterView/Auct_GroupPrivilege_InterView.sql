{{ config(materialized='view',schema='stg')}}
Select
	[GROUPID] [GroupID],
	[PRIVILEGEID] [PrivilegeID],
	cast([DENY] as nvarchar(4000)) [Deny],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_GroupPrivilege_Raw]
