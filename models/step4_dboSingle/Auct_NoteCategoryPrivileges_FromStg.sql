{{ config(materialized='table',schema='dbo')}}
Select
	cast([NoteCategoryID] as int) [NoteCategoryID],
	cast([PrivilegeID] as int) [PrivilegeID] 
From stg.[Auct_NoteCategoryPrivileges_FinalView]