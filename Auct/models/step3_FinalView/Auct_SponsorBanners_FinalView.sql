{{ config(materialized='view',schema='stg')}}
Select
	[SponsorBannersID],[BannerTypeID],[SponsorAuctionID],[SponsorBannerNumber],[Created],[UpdateEventID] 
From stg.[Auct_SponsorBanners_Incr] 
Where [dbt_valid_to] is null