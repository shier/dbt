
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([SearchHistoryFK] as varchar), Cast([ListingFK] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Listings_Inter]
	)
Select * From hashData
