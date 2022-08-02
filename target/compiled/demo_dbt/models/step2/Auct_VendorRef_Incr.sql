
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([OldVendorID] as varchar), Cast([NewVendorID] as varchar), Cast([VendorAuctionID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_VendorRef_Inter]
	)
Select * From hashData
