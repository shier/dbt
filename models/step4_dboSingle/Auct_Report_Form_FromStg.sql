{{ config(materialized='table',schema='dbo')}}
Select
	cast([FormID] as int) [FormID],
	cast([ReportFormID] as int) [ReportFormID],
	cast([ReportID] as int) [ReportID],
	cast([EventID] as nvarchar(4000)) [EventID],
	cast([PackageOrder] as int) [PackageOrder],
	cast([AuctionID] as int) [AuctionID],
	cast([Active] as bit) [Active] 
From stg.[Auct_Report_Form_FinalView]