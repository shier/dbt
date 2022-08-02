{{ config(materialized='table',schema='dbo')}}
Select
	cast([UsersID] as int) [UsersID],
	cast([PrivilegeID] as int) [PrivilegeID] 
From stg.[Auct_UserPrivileges_FinalView]