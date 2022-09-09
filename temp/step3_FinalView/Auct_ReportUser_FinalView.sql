{{ config(materialized='view',schema='stg')}}
Select
	[ReportID],[UserID],[Title],[Category],[Description] 
From [Auct_ReportUser_Incr] 
Where [dbt_valid_to] is null