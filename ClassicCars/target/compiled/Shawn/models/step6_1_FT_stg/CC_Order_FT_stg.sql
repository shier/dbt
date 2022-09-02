
SELECT
	[ID] AS [OrderID],
	[IsActive],
	[UserID],
	[PaymentID],
	[CreateDate] AS [Created],
	[ModifyDate] AS [ModifiedDate]
FROM [stg].[CC_Order_FinalView]