
  
  if object_id ('"stg"."CC_OrderItem_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_OrderItem_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_OrderItem_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_OrderItem_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_OrderItem_Inter__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "stg"."CC_OrderItem_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_OrderItem_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_OrderItem_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_OrderItem_Inter__dbt_tmp_temp_view"
    end

