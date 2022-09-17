{{ config(materialized='table',schema='dbo')}}
Select
	cast([NoteCategoryID] as int) [NOTECATEGORYID],
	cast([PrivilegeID] as int) [PRIVILEGEID] 
From stg.[Auct_NoteCategoryPrivileges_FinalView]