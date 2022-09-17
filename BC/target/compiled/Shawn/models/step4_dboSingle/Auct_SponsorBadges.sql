
Select
	cast([SponsorBadgesID] as int) [SPONSORBADGESID],
	cast([BadgeTypeID] as int) [BADGETYPEID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([SponsorBadgeNumber] as int) [SPONSORBADGENUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SponsorBadges_FinalView]