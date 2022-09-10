
SELECT
	so.[Id] AS [ShippingOptionID],
	so.[ShippingMethodId] AS [ShippingMethodID],
	sm.[Name] AS [ShippingMethod],
	so.[FirstItemAmount],
	so.[ListingId] AS [ListingID],
	so.[AdditionalItemAmount],
	so.[CreatedOn] AS [CreatedDate],
	so.[UpdatedOn] AS [UpdatedDate],
	so.[DeletedOn] AS [DeletedDate]
From
	[stg].[AH_ShippingOptions_FinalView] AS so
left JOIN [stg].[AH_ShippingMethods_FinalView] AS sm 
on so.ShippingMethodID=sm.ID