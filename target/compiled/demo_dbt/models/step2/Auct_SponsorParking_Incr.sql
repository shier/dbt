
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ParkingTypeID as varchar), Cast(SponsorAuctionID as varchar), Cast(SponsorParkingNumber as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponsorParking_Inter]
	)
Select * From hashData
