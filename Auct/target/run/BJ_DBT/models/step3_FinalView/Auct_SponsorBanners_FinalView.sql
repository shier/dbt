create view "stg"."Auct_SponsorBanners_FinalView__dbt_tmp" as
    
Select
	[SponsorBannersID],[BannerTypeID],[SponsorAuctionID],[SponsorBannerNumber],[Created],[UpdateEventID] 
From stg.[Auct_SponsorBanners_Incr] 
Where [dbt_valid_to] is null
