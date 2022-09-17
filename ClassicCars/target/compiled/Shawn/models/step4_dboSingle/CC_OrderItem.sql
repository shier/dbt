
Select
	cast([CreateDate] as datetime) [Created_OrderItem],
	cast([ModifyDate] as datetime) [ModifiedDate_OrderItem],
	cast([LastSalesForceActivityDate] as datetime) [LastSalesforceActivityDate],
	cast([ID] as int) [ID],
	cast([OrderID] as int) [OrderID],
	cast([ProductID] as int) [ProductID_OrderItem],
	cast([Quantity] as int) [Quantity],
	cast([ItemID] as int) [ItemID],
	cast([IsActive] as bit) [IsActive_OrderItem],
	cast([Price] as money) [Price],
	cast([StockPrice] as money) [StockPrice],
	cast([AfterDiscountPrice] as money) [AfterDiscountPrice],
	cast([ItemInfo] as nvarchar(4000)) [ItemInfo],
	cast([SalesForceOpportunityID] as nvarchar(50)) [SalesforceOpportunityID] 
From stg.[CC_OrderItem_FinalView]