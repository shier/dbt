{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Description] 
From stg.[CC_ListingStatus_Incr] 
Where [dbt_valid_to] is null