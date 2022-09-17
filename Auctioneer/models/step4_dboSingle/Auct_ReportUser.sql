{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReportID] as int) [REPORTID],
	cast([UserID] as int) [USERID],
	cast([Title] as nvarchar(4000)) [TITLE],
	cast([Category] as nvarchar(4000)) [CATEGORY],
	cast([Description] as nvarchar(4000)) [DESCRIPTION] 
From stg.[Auct_ReportUser_FinalView]