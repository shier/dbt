
Select
	FavoritesUnsubscribePK Favoritesunsubscribepk,
	UserFK Userfk,
	UnsubscribeDateUTC UnsubscribeDateUTC,
	cast(DataTokenID as nvarchar(4000)) DataTokenID
From CC_Favoritesunsubscribe_Raw