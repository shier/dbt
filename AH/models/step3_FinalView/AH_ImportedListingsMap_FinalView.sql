{{ config(materialized='view',schema='stg')}}
Select
	[LoCallistingID],[ForeignListingID] 
From stg.[AH_ImportedListingsMap_Incr] 
Where [dbt_valid_to] is null