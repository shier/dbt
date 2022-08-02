{{ config(materialized='view',schema='stg')}}
Select
	[ID],[Description] 
From stg.[CC_ListingImageType_Incr] 
Where [dbt_valid_to] is null