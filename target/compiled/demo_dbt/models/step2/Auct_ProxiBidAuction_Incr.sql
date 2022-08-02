
With hashData as (
		Select
			HASHBYTES('MD5', concat(AuctionCategory, Cast(ProxiBidID as varchar), Cast(AuctioneerauctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ProxiBidAuction_Inter]
	)
Select * From hashData
