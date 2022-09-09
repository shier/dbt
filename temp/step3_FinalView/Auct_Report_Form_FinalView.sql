{{ config(materialized='view',schema='stg')}}
Select
	[ReportFormID],[ReportID],[FormID],[EventID],[PackageOrder],[AuctionID],[Active] 
From [Auct_Report_Form_Incr] 
Where [dbt_valid_to] is null