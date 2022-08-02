{{ config(materialized='view',schema='stg')}}
Select
	[ListingSourcePK],[Description] 
From stg.[CC_ListingSources_Incr] 
Where [dbt_valid_to] is null