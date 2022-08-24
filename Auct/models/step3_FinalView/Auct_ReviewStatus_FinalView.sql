{{ config(materialized='view',schema='stg')}}
Select
	[ReviewStatusID],[Name] 
From stg.[Auct_ReviewStatus_Incr] 
Where [dbt_valid_to] is null