
  
  if object_id ('"dbo"."CC_OrderItem__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_OrderItem__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_OrderItem__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_OrderItem__dbt_tmp"
    end


   EXEC('create view dbo.CC_OrderItem__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "dbo"."CC_OrderItem__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_OrderItem__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_OrderItem__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_OrderItem__dbt_tmp_temp_view"
    end


