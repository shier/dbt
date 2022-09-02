{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Count],[CategoryID] 
From stg.[AH_CategoryCount_Incr] 
Where [dbt_valid_to] is null