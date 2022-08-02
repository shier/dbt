{{ config(materialized='table',schema='dbo')}}
Select
	cast([BidderBadgeImageID] as int) [BidderBadgeImageID],
	cast([IsDefault] as bit) [IsDefault],
	cast([FileName] as nvarchar(4000)) [FileName],
	cast([UncPath] as nvarchar(4000)) [UNCPath],
	cast([BadgesIDEID] as int) [BadgesIDEID],
	cast([Description] as nvarchar(4000)) [Description],
	cast([AuctionID] as int) [AuctionID] 
From stg.[Auct_BidderBadgeImage_FinalView]