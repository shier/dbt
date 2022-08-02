
Select
	Longitude Longitude,
	Latitude Latitude,
	cast(Browser as nvarchar(4000)) Browser,
	cast(AppUsed as nvarchar(4000)) Appused,
	cast(UserAgent as nvarchar(4000)) UserAgent,
	cast(UserEmail as nvarchar(4000)) UserEmail,
	cast(IpAddress as nvarchar(4000)) IpAddress,
	CreateDateUTC CreateDateUTC,
	ListingFK Listingfk,
	ShareInfoId ShareInfoID,
	UserId UserID
From CC_ShareInfo_Raw