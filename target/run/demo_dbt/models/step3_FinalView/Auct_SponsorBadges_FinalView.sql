create view "stg"."Auct_SponsorBadges_FinalView__dbt_tmp" as
    
Select
	[SponsorBadgesID],[BadgeTypeID],[SponsorAuctionID],[SponsorBadgeNumber],[Created],[UpdateEventID] 
From stg.[Auct_SponsorBadges_Incr] 
Where [dbt_valid_to] is null
