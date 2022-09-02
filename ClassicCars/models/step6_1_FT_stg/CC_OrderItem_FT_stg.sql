{{ config(materialized='table',schema='stg')}}
SELECT
	[ID] AS [OrderItemID],
	[OrderID],
	[IsActive],
	[ProductID],
	[Quantity],
	[Price],
	[ItemID],
	[SalesforceOpportunityID],
	[LastSalesforceActivityDate],
	[StockPrice],
	[AfterDiscountPrice],
	[CreateDate] AS [Created],
	[ModifyDate] AS [ModifiedDate]
FROM [stg].[CC_OrderItem_FinalView]