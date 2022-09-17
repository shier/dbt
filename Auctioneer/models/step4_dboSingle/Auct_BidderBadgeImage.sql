{{ config(materialized='table',schema='dbo')}}
Select
	cast([IsDefault] as bit) [ISDEFAULT],
	cast([BidderBadgeImageID] as int) [BIDDERBADGEIMAGEID],
	cast([FileName] as nvarchar(4000)) [FILENAME],
	cast([UncPath] as nvarchar(4000)) [UNCPATH],
	cast([BadgesIDEID] as int) [BADGESIDEID],
	cast([Description] as nvarchar(4000)) [DESCRIPTION],
	cast([AuctionID] as int) [AUCTIONID] 
From stg.[Auct_BidderBadgeImage_FinalView]