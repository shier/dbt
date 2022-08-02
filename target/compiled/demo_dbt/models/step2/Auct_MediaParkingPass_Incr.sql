
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(MediaAuctionID as varchar), Cast(UpdateEventID as varchar), ParkingPassNumber)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaParkingPass_Inter]
	)
Select * From hashData
