
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([LotNumber] as varchar), Cast([AuctionID] as varchar), Cast([EndingBID] as varchar), Cast([ChangeTime] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidRecord_InterView]
	)
Select * From hashData
