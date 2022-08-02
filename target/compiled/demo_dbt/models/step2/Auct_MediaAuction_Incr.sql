
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(AnticipatedDate as varchar), Cast(Created as varchar), Cast(MediaID as varchar), Cast(AuctionID as varchar), Cast(Galainvites as varchar), Cast(UpdateEventID as varchar), PublishPhotos, Comments)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_MediaAuction_Inter]
	)
Select * From hashData
