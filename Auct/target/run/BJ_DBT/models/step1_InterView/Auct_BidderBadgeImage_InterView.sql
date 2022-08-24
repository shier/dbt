create view "dbo_stg"."Auct_BidderBadgeImage_InterView__dbt_tmp" as
    
Select
	[BIDDERBADGEIMAGEID] [BidderBadgeImageID],
	[ISDEFAULT] [IsDefault],
	cast([FILENAME] as nvarchar(4000)) [FileName],
	cast([UNCPATH] as nvarchar(4000)) [UncPath],
	[BADGESIDEID] [BadgesIDEID],
	cast([DESCRIPTION] as nvarchar(4000)) [Description],
	[AUCTIONID] [AuctionID]
From stg.[Auct_BidderBadgeImage_Raw]
