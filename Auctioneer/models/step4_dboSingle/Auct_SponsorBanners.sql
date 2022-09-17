{{ config(materialized='table',schema='dbo')}}
Select
	cast([SponsorBannersID] as int) [SPONSORBANNERSID],
	cast([BannerTypeID] as int) [BANNERTYPEID],
	cast([SponsorAuctionID] as int) [SPONSORAUCTIONID],
	cast([SponsorBannerNumber] as int) [SPONSORBANNERNUMBER],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SponsorBanners_FinalView]