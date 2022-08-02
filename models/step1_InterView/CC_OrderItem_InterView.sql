{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[LastSalesforceActivityDate] [LastSalesForceActivityDate],
	[OrderId] [OrderID],
	[ProductId] [ProductID],
	[Quantity] [Quantity],
	[ItemId] [ItemID],
	[IsActive] [IsActive],
	[Price] [Price],
	[StockPrice] [StockPrice],
	[AfterDiscountPrice] [AfterDiscountPrice],
	cast([ItemInfo] as nvarchar(4000)) [ItemInfo],
	cast([SalesforceOpportunityId] as nvarchar(4000)) [SalesForceOpportunityID]
From stg.[CC_OrderItem_Raw]
