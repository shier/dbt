
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Surchagecost as varchar), Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(VendorAuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_VendorsurCharge_Inter]
	)
Select * From hashData
