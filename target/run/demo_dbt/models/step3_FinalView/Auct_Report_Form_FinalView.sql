create view "stg"."Auct_Report_Form_FinalView__dbt_tmp" as
    
Select
	[FormID],[ReportFormID],[ReportID],[EventID],[PackageOrder],[AuctionID],[Active] 
From stg.[Auct_Report_Form_Incr] 
Where [dbt_valid_to] is null
