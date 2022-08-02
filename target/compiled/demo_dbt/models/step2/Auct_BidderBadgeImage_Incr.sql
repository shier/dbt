
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(BadgesIDEID as varchar), Cast(AuctionID as varchar), FileName, UncPath, Description, Cast(IsDefault as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderBadgeImage_Inter]
	)
Select * From hashData
