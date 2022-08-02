
Select
	cast(DataTokenID as nvarchar(4000)) DataTokenID,
	CreateDateUTC CreateDateUTC,
	ModifyDateUTC ModifyDateUTC,
	IsActive IsActive,
	UserFK Userfk,
	FavoritePK Favoritepk,
	ListingFK Listingfk
From CC_Favorites_Raw