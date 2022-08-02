{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReportID] as int) [ReportID],
	cast([UserID] as int) [UserID] 
From stg.[Auct_ReportRestricted_FinalView]