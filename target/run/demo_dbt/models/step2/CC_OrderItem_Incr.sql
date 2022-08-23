
      
  
  if object_id ('"stg"."CC_OrderItem_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_OrderItem_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_OrderItem_Incr"','U') is not null
    begin
    drop table "stg"."CC_OrderItem_Incr"
    end


   EXEC('create view stg.CC_OrderItem_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(IsActive as varchar), Cast(Price as varchar), Cast(StockPrice as varchar), Cast(AfterDiscountPrice as varchar), ItemInfo, SalesForceOpportunityID, Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(LastSalesForceActivityDate as varchar), Cast(OrderID as varchar), Cast(ProductID as varchar), Cast(Quantity as varchar), Cast(ItemID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_OrderItem_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_OrderItem_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_OrderItem_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_OrderItem_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_OrderItem_Incr_temp_view"
    end



  