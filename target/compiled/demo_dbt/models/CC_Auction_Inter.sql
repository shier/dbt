
Select
	cast(Name as nvarchar(4000)) Name,
	cast(Description as nvarchar(4000)) Description,
	cast(Location as nvarchar(4000)) Location,
	cast(ImageUrl as nvarchar(4000)) ImageURL,
	cast(WordPressTag as nvarchar(4000)) WordPressTag,
	cast(DateInfo as nvarchar(4000)) DateInfo,
	cast(SiteUrl as nvarchar(4000)) SiteURL,
	cast(ContactUrl as nvarchar(4000)) ContactURL,
	cast(BidderUrl as nvarchar(4000)) BidderURL,
	cast(SellerUrl as nvarchar(4000)) SellerURL,
	cast(ThumbnailUrl as nvarchar(4000)) ThuMbnailURL,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	CompanyId CompanyID,
	IsActive IsActive
From CC_Auction_Raw