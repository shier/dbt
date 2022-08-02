{{ config(materialized='view',schema='stg')}}
Select
	[SponsorBadgesID],[BadgeTypeID],[SponsorAuctionID],[SponsorBadgeNumber],[Created],[UpdateEventID] 
From stg.[Auct_SponsorBadges_Incr] 
Where [dbt_valid_to] is null