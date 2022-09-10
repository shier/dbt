
SELECT
		[Id] AS [ListingActionID],
		[UserId] AS [UserID],
		[ListingId] AS [ListingID],
		[ActionDTTM],
		[Description],
		[LastUpdatedUser],
		[Amount],
		[ProxyAmount],
		[Quantity] AS [QTY],
		[Reason],
		[Status],
		[UserEntered] AS [HasUserEntered],
		[CreatedOn] AS [CreatedDate],
		[UpdatedOn] AS [UpdatedDate],
		[DeletedOn] AS [DeletedDate]
FROM [stg].[AH_ListingActions_FinalView];