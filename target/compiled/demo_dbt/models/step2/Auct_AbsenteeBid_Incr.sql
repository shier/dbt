
With hashData as (
		Select
			HASHBYTES('MD5', concat(Contactphone1, Contactphone2, Note, Cast(AuctionBidderID as varchar), Cast(ConsignmentID as varchar), Cast(AuctionID as varchar), Cast(AbsenteeTypeIDBit as varchar), Cast(MaxBID as varchar), Cast(LotNumber as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AbsenteeBid_Inter]
	)
Select * From hashData
