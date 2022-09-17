{{ config(materialized='table',schema='dbo')}}
Select
	cast([UsersPrivilegeID] as int) [USERSPRIVILEGEID],
	cast([UsersID] as int) [USERSID],
	cast([PrivilegeID] as int) [PRIVILEGEID],
	cast([Deny] as nvarchar(4000)) [DENY],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_UserPrivilege_FinalView]