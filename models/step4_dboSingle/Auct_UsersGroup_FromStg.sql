{{ config(materialized='table',schema='dbo')}}
Select
	cast([UsersGroupID] as int) [UsersGroupID],
	cast([UsersID] as int) [UsersID],
	cast([GroupID] as int) [GroupID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_UsersGroup_FinalView]