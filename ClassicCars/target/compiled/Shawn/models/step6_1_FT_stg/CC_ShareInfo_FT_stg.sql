
SELECT
	[ShareInfoID],
	[CreateDateUTC] AS [CreatedUTC],
	[Browser],
	[UserID],
	[AppUsed],
	[ListingFK] AS [ListingID],
	[UserAgent],
	[UserEmail],
	[IPAddress],
	[Latitude],
	[Longitude]
FROM [stg].[CC_ShareInfo_FinalView]