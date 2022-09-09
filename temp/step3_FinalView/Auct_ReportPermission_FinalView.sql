{{ config(materialized='view',schema='stg')}}
Select
	[ReportID],[Permission] 
From [Auct_ReportPermission_Incr] 
Where [dbt_valid_to] is null