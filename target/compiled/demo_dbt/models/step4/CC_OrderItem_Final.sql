
Select
	[ID],[IsActive],[Price],[StockPrice],[AfterDiscountPrice],[ItemInfo],[SalesForceOpportunityID],[CreateDate],[ModifyDate],[LastSalesForceActivityDate],[OrderID],[ProductID],[Quantity],[ItemID] 
From stg.[CC_OrderItem_Incr] 
Where [dbt_valid_to] is null