
Select
	[SponsorBannersID],[Created],[BannerTypeID],[SponsorAuctionID],[SponsorBannerNumber],[UpdateEventID] 
From stg.[Auct_SponsorBanners_Incr] 
Where [dbt_valid_to] is null