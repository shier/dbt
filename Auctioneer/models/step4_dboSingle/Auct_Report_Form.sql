{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReportFormID] as int) [REPORTFORMID],
	cast([ReportID] as int) [REPORTID],
	cast([FormID] as int) [FORMID],
	cast([EventID] as nvarchar(4000)) [EVENTID],
	cast([PackageOrder] as int) [PACKAGEORDER],
	cast([AuctionID] as int) [AUCTIONID],
	cast([Active] as bit) [ACTIVE] 
From stg.[Auct_Report_Form_FinalView]