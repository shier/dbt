{{ config(materialized='table',schema='dbo')}}
Select
	cast([GroupID] as int) [GroupID],
	cast([PrivilegeID] as int) [PrivilegeID],
	cast([Deny] as nvarchar(4000)) [Deny],
	cast([Created] as DATETIME) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_GroupPrivilege_FinalView]