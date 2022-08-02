create view "stg"."CC_OrderItem_FinalView__dbt_tmp" as
    
Select
	[ID],[CreateDate],[ModifyDate],[LastSalesForceActivityDate],[OrderID],[ProductID],[Quantity],[ItemID],[IsActive],[Price],[StockPrice],[AfterDiscountPrice],[ItemInfo],[SalesForceOpportunityID] 
From stg.[CC_OrderItem_Incr] 
Where [dbt_valid_to] is null
