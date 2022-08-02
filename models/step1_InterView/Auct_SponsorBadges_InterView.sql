{{ config(materialized='view',schema='stg')}}
Select
	[SPONSORBADGESID] [SponsorBadgesID],
	[BADGETYPEID] [BadgeTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[SPONSORBADGENUMBER] [SponsorBadgeNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorBadges_Raw]
