
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionID as varchar), Cast(AuctionBidderNumber as varchar), Cast(BlockBidID as varchar), SignaturePath)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BlockBidSignature_Inter]
	)
Select * From hashData
