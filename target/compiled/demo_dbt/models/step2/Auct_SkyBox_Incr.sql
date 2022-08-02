
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionSkyBoxNumber as varchar), Cast(BidderID as varchar), Cast(AuctionID as varchar), Name)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SkyBox_Inter]
	)
Select * From hashData
