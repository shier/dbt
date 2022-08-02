
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionBidderID as varchar), Cast(MaximumBID as varchar), Cast(AuctionID as varchar), Cast(LotNumber as varchar), Notes, ContactInfo, OtherContactInfo)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_BidderAbsentee_Inter]
	)
Select * From hashData
