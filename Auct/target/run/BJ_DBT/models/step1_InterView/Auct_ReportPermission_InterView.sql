create view "dbo_stg"."Auct_ReportPermission_InterView__dbt_tmp" as
    
Select
	[REPORTID] [ReportID],
	cast([PERMISSION] as nvarchar(4000)) [Permission]
From stg.[Auct_ReportPermission_Raw]
