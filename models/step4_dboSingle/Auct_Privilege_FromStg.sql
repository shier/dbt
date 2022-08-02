{{ config(materialized='table',schema='dbo')}}
Select
	cast([PrivilegeID] as int) [PrivilegeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_Privilege_FinalView]