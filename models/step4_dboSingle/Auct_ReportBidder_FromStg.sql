{{ config(materialized='table',schema='dbo')}}
Select
	cast([ReportID] as int) [ReportID],
	cast([DisplayName] as nvarchar(4000)) [DisplayName] 
From stg.[Auct_ReportBidder_FinalView]