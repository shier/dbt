create view "stg"."Auct_ReportBidder_FinalView__dbt_tmp" as
    
Select
	[ReportID],[DisplayName] 
From stg.[Auct_ReportBidder_Incr] 
Where [dbt_valid_to] is null
