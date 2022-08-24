{{ config(materialized='view',schema='stg')}}
Select
	[ReportID],[UserID] 
From [Auct_ReportRestricted_Incr]