
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CurrentAuctionID] as varchar), Cast([AuctionID] as varchar), Cast([Percentage] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AuctionSeasonPercentage_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_AuctionSeasonPercentage_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
