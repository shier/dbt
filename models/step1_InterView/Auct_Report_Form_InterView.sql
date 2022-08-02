{{ config(materialized='view',schema='stg')}}
Select
	[FORMID] [FormID],
	[REPORTFORMID] [ReportFormID],
	[REPORTID] [ReportID],
	cast([EVENTID] as nvarchar(4000)) [EventID],
	[PACKAGEORDER] [PackageOrder],
	[AUCTIONID] [AuctionID],
	[ACTIVE] [Active]
From stg.[Auct_Report_Form_Raw]
