
  
  if object_id ('"stg"."CC_OrderItem_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_OrderItem_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_OrderItem_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_OrderItem_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.CC_OrderItem_FT_stg__dbt_tmp_temp_view as
    
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
    ');

  CREATE TABLE "stg"."CC_OrderItem_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_OrderItem_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_OrderItem_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_OrderItem_FT_stg__dbt_tmp_temp_view"
    end


