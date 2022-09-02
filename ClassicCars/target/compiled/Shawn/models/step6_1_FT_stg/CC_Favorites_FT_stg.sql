
SELECT
	[FavoritePK],
	[CreateDateUTC] AS [CreatedUTC],
	[ModifyDateUTC] AS [ModifiedDateUTC],
	[IsActive],
	[ListingFK] AS [ListingID],
	[UserFK] AS [UserID],
	[DataTokenID]
FROM [stg].[CC_Favorites_FinalView]