{{ config(materialized='view',schema='stg')}}
Select
	[ReportID],[DisplayName] 
From stg.[Auct_ReportBidder_Incr] 
Where [dbt_valid_to] is null