{{ config(materialized='table',schema='dbo')}}
Select
	cast([Name] as nvarchar(100)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Location] as nvarchar(200)) [Location],
	cast([DateInfo] as nvarchar(100)) [DateInfo],
	cast([SiteURL] as nvarchar(2048)) [SiteUrl],
	cast([ContactURL] as nvarchar(2048)) [ContactUrl],
	cast([BidderURL] as nvarchar(2048)) [BidderUrl],
	cast([SellerURL] as nvarchar(2048)) [SellerUrl],
	cast([ThuMbnailURL] as nvarchar(2048)) [ThumbnailUrl],
	cast([ImageURL] as nvarchar(2048)) [ImageUrl],
	cast([WordPressTag] as nvarchar(100)) [WordPressTag],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [Id],
	cast([CompanyID] as int) [CompanyId],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_Auction_FinalView]