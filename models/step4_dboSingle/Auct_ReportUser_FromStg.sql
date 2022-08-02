{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReportID] as int) [ReportID],
	cast([UserID] as int) [UserID],
	cast([Title] as nvarchar(4000)) [Title],
	cast([Category] as nvarchar(4000)) [Category],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_ReportUser_FinalView]