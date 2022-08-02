
With hashData as (
		Select
			HASHBYTES('MD5', concat(DaysCovering, JobTitle, Cast(Created as varchar), Cast(VendorID as varchar), Cast(ContactID as varchar), Cast(MediaPositionID as varchar), Cast(UpdateEventID as varchar), Cast(MediaAuctionID as varchar), Cast(SponsorAuctionID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SubordinateContact_Inter]
	)
Select * From hashData
