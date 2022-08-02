{{ config(materialized='table',schema='dbo')}}
SELECT
	cast(C_OI.[CreateDate] as datetime) [Created_OrderItem],
	cast(C_OI.[ModifyDate] as datetime) [ModifiedDate_OrderItem],
	cast(C_OI.[LastSalesForceActivityDate] as datetime) [LastSalesforceActivityDate],
	C_OI.[OrderID],
	C_OI.[ProductID] [ProductID_OrderItem],
	C_OI.[Quantity],
	C_OI.[ItemID],
	C_OI.[IsActive] [IsActive_OrderItem],
	cast(C_OI.[Price] as money) [Price],
	cast(C_OI.[StockPrice] as money) [StockPrice],
	cast(C_OI.[AfterDiscountPrice] as money) [AfterDiscountPrice],
	cast(C_OI.[SalesForceOpportunityID] as nvarchar(50)) [SalesforceOpportunityID],
	C_O.[ID],
	C_O.[IsActive],
	C_O.[UserID],
	C_O.[PaymentID],
	cast(C_O.[CreateDate] as datetime) [Created_Order],
	cast(C_O.[ModifyDate] as datetime) [ModifiedDate_Order],
	C_P.[ID] [ProductID_Product],
	cast(C_P.[Description] as nvarchar(4000)) [Description],
	cast(C_P.[DisplayDescription] as nvarchar(4000)) [DisplayDescription],
	C_P.[IsActive] [IsActive_Product],
	cast(C_P.[CreateDate] as datetime) [Created_Product],
	cast(C_P.[ModifyDate] as datetime) [ModifiedDate_Product]
FROM [stg].[CC_Order_FinalView] AS C_O 
JOIN [stg].[CC_OrderItem_FinalView] AS C_OI ON C_OI.[ID]=.[]
JOIN [stg].[CC_Product_FinalView] AS C_P ON C_P.[ID]=.[]
