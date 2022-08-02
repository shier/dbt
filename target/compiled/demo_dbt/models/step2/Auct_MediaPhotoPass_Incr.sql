
With hashData as (
		Select
			HASHBYTES('MD5', concat(PhotoPassNumber, Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(MediaAuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaPhotoPass_Inter]
	)
Select * From hashData
