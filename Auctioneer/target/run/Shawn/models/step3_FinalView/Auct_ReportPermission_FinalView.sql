create view "stg"."Auct_ReportPermission_FinalView__dbt_tmp" as
    
Select
	[ReportID],[Permission] 
From [Auct_ReportPermission_Incr] 
Where [dbt_valid_to] is null
