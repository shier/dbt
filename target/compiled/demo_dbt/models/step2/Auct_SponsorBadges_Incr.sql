
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(BadgeTypeID as varchar), Cast(SponsorAuctionID as varchar), Cast(SponsorBadgeNumber as varchar), Cast(UpdateEventID as varchar), Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SponsorBadges_Inter]
	)
Select * From hashData
