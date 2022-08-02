{{ config(materialized='view',schema='stg')}}
Select
	[USERSPRIVILEGEID] [UsersPrivilegeID],
	[USERSID] [UsersID],
	[PRIVILEGEID] [PrivilegeID],
	cast([DENY] as nvarchar(4000)) [Deny],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_UserPrivilege_Raw]
