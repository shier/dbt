{{ config(materialized='view',schema='stg')}}
Select
	[DisplayStatusID],[Name] 
From stg.[Auct_DisplayStatus_Incr] 
Where [dbt_valid_to] is null