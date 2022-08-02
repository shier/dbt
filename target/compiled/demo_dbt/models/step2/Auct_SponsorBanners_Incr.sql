
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(BannerTypeID as varchar), Cast(SponsorAuctionID as varchar), Cast(SponsorBannerNumber as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponsorBanners_Inter]
	)
Select * From hashData
