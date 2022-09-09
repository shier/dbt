create view "stg"."Auct_ReportUser_FinalView__dbt_tmp" as
    
Select
	[ReportID],[UserID],[Title],[Category],[Description] 
From [Auct_ReportUser_Incr] 
Where [dbt_valid_to] is null
