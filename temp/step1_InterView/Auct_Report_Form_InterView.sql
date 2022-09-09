{{ config(materialized='view',schema='stg')}}
Select
	[REPORTFORMID] [ReportFormID],
	[REPORTID] [ReportID],
	[FORMID] [FormID],
	cast([EVENTID] as nvarchar(4000)) [EventID],
	[PACKAGEORDER] [PackageOrder],
	[AUCTIONID] [AuctionID],
	[ACTIVE] [Active]
From stg.[Auct_Report_Form_Raw]
