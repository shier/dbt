
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(BoothID as varchar), Cast(VendorAuctionID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_VendorBooth_Inter]
	)
Select * From hashData
