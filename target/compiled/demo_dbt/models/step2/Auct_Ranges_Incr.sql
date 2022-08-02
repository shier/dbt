
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ProjectedTime as varchar), Cast(RangeNumber as varchar), Cast(RangeStart as varchar), Cast(RangeEnd as varchar), Cast(ContactTypeID as varchar), Cast(AuctionID as varchar), Cast(UpdateEventID as varchar), Cast(IsReserveLotFee as varchar), RangeName)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Ranges_Inter]
	)
Select * From hashData
