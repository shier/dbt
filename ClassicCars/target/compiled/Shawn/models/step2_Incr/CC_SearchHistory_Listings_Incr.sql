
With hashData as (
		Select
			*, HASHBYTES('SHA2_256', concat(Cast([SearchHistoryFK] as varchar), Cast([ListingFK] as varchar))) as dbt_scd_id,
			CURRENT_TIMESTAMP as dbt_updated_at, 
			CURRENT_TIMESTAMP as dbt_valid_from, 
			NULL as dbt_valid_to
		From stg.[CC_SearchHistory_Listings_InterView]
	)
Select * From hashData
