
SELECT
		[Id] AS [WatchID],
		[UserId] AS [UserID],
		[ListingId] AS [ListingID],
		[LastUpdatedUser],
		[CreatedOn] AS [CreatedDate],
		[UpdatedOn] AS [UpdatedDate],
		[DeletedOn] AS [DeletedDate]
From [stg].[AH_Watches_FinalView]