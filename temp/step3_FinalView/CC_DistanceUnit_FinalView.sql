{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Description] 
From stg.[CC_DistanceUnit_Incr] 
Where [dbt_valid_to] is null