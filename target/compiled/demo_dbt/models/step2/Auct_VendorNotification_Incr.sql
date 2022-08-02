
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(VendorID as varchar), Cast(UpdateEventID as varchar), ReceiveInfo, AuctionType)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_VendorNotification_Inter]
	)
Select * From hashData
