{{ config(materialized='view',schema='stg')}}
Select
	[REPORTID] [ReportID],
	cast([PERMISSION] as nvarchar(4000)) [Permission]
From stg.[Auct_ReportPermission_Raw]
