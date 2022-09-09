{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Created],[QueryString],[Login] 
From stg.[Auct_ReportLogging_Incr] 
Where [dbt_valid_to] is null