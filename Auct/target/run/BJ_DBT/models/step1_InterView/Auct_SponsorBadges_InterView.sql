create view "dbo_stg"."Auct_SponsorBadges_InterView__dbt_tmp" as
    
Select
	[SPONSORBADGESID] [SponsorBadgesID],
	[BADGETYPEID] [BadgeTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[SPONSORBADGENUMBER] [SponsorBadgeNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorBadges_Raw]
