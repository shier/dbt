{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorBannersID] as int) [SponsorBannersID],
	cast([BannerTypeID] as int) [BannerTypeID],
	cast([SponsorAuctionID] as int) [SponsorAuctionID],
	cast([SponsorBannerNumber] as int) [SponsorBannerNumber],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SponsorBanners_FinalView]