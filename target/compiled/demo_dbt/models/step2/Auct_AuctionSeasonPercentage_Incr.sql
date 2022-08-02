
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CurrentAuctionID] as varchar), Cast([AuctionID] as varchar), Cast([Percentage] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionSeasonPercentage_Inter]
	)
Select * From hashData
