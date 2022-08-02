
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AuctionID as varchar), Cast(ReviewStateID as varchar), Cast(ReviewStateDate as varchar), Cast(ModifiedDateTime as varchar), ReviewStateName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Consignment_Inter]
	)
Select * From hashData
