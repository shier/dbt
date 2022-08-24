create view "stg"."Auct_SponsorBanners_InterView__dbt_tmp" as
    
Select
	[SPONSORBANNERSID] [SponsorBannersID],
	[BANNERTYPEID] [BannerTypeID],
	[SPONSORAUCTIONID] [SponsorAuctionID],
	[SPONSORBANNERNUMBER] [SponsorBannerNumber],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_SponsorBanners_Raw]
