{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Location] as nvarchar(4000)) [Location],
	cast([DateInfo] as nvarchar(4000)) [DateInfo],
	cast([SiteUrl] as nvarchar(4000)) [SiteURL],
	cast([ContactUrl] as nvarchar(4000)) [ContactURL],
	cast([BidderUrl] as nvarchar(4000)) [BidderURL],
	cast([SellerUrl] as nvarchar(4000)) [SellerURL],
	cast([ThumbnailUrl] as nvarchar(4000)) [ThuMbnailURL],
	cast([ImageUrl] as nvarchar(4000)) [ImageURL],
	cast([WordPressTag] as nvarchar(4000)) [WordPressTag],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[CompanyId] [CompanyID],
	[IsActive] [IsActive]
From stg.[CC_Auction_Raw]
