{{ config(materialized='table',schema='dbo')}}
Select
	cast([UsersPrivilegeID] as int) [UsersPrivilegeID],
	cast([UsersID] as int) [UsersID],
	cast([PrivilegeID] as int) [PrivilegeID],
	cast([Deny] as nvarchar(4000)) [Deny],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_UserPrivilege_FinalView]