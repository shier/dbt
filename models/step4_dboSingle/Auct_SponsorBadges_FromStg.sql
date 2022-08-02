{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorBadgesID] as int) [SponsorBadgesID],
	cast([BadgeTypeID] as int) [BadgeTypeID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([SponsorBadgeNumber] as int) [SponsorBadgeNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SponsorBadges_FinalView]