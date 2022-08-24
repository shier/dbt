{{ config(materialized='view',schema='stg')}}
Select
	[REPORTID] [ReportID],
	[USERID] [UserID]
From stg.[Auct_ReportRestricted_Raw]
