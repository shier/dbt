{{ config(materialized='table',schema='dbo')}}
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([LastSalesForceActivityDate] as datetime) [LastSalesforceActivityDate],
	cast([ID] as int) [Id],
	cast([OrderID] as int) [OrderId],
	cast([ProductID] as int) [ProductId],
	cast([Quantity] as int) [Quantity],
	cast([ItemID] as int) [ItemId],
	cast([IsActive] as bit) [IsActive],
	cast([Price] as money) [Price],
	cast([StockPrice] as money) [StockPrice],
	cast([AfterDiscountPrice] as money) [AfterDiscountPrice],
	cast([ItemInfo] as nvarchar(4000)) [ItemInfo],
	cast([SalesForceOpportunityID] as nvarchar(50)) [SalesforceOpportunityId] 
From stg.[CC_OrderItem_FinalView]