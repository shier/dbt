
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Count as varchar), Cast(AuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactConreqAuction_Inter]
	)
Select * From hashData
