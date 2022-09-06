
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ContactID] as varchar), Cast([AuctionID] as varchar), Cast([Count] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ContactConreqAuction_InterView]
	)
Select * From hashData