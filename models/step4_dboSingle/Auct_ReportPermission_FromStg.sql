{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReportID] as int) [ReportID],
	cast([Permission] as nvarchar(4000)) [PerMission] 
From stg.[Auct_ReportPermission_FinalView]