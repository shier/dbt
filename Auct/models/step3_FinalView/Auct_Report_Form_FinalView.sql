{{ config(materialized='view',schema='stg')}}
Select
	[FormID],[ReportFormID],[ReportID],[EventID],[PackageOrder],[AuctionID],[Active] 
From stg.[Auct_Report_Form_Incr] 
Where [dbt_valid_to] is null