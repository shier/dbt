create view "stg"."Auct_ReportRestricted_FinalView__dbt_tmp" as
    
Select
	[ReportID],[UserID] 
From [Auct_ReportRestricted_Incr]
