
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([AuctionID] as varchar), Cast([AuctionBidderNumber] as varchar), [Comments], Cast([BlockedByUserID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BlockedBidderNumbers_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_BlockedBidderNumbers_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
