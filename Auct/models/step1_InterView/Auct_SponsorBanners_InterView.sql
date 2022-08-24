{{ config(materialized='view',schema='stg')}}
Select
	[SPONSORBANNERSID] [SponsorBannersID],
	[BANNERTYPEID] [BannerTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[SPONSORBANNERNUMBER] [SponsorBannerNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorBanners_Raw]
