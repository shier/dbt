{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Description] 
From stg.[CC_AlertFrequencies_Incr] 
Where [dbt_valid_to] is null