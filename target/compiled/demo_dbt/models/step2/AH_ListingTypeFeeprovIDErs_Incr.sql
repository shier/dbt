
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_ListingTypeFeeprovIDErs_Inter]
	)
Select * From hashData
