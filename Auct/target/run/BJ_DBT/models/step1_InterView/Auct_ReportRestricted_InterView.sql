create view "stg"."Auct_ReportRestricted_InterView__dbt_tmp" as
    
Select
	[REPORTID] [ReportID],
	[USERID] [UserID]
From stg.[Auct_ReportRestricted_Raw]
