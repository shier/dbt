
  
  if object_id ('"stg"."CC_OrderItem_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_OrderItem_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_OrderItem_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_OrderItem_Final__dbt_tmp"
    end


   EXEC('create view stg.CC_OrderItem_Final__dbt_tmp_temp_view as
    
Select
	[ID],[IsActive],[Price],[StockPrice],[AfterDiscountPrice],[ItemInfo],[SalesForceOpportunityID],[CreateDate],[ModifyDate],[LastSalesForceActivityDate],[OrderID],[ProductID],[Quantity],[ItemID] 
From stg.[CC_OrderItem_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."CC_OrderItem_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_OrderItem_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_OrderItem_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_OrderItem_Final__dbt_tmp_temp_view"
    end


