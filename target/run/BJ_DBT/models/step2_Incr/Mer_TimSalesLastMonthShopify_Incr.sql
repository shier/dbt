
      
  
  if object_id ('"stg"."Mer_TimSalesLastMonthShopify_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TimSalesLastMonthShopify_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_TimSalesLastMonthShopify_Incr"','U') is not null
    begin
    drop table "stg"."Mer_TimSalesLastMonthShopify_Incr"
    end


   EXEC('create view stg.Mer_TimSalesLastMonthShopify_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([Variant_SKU], [Order_ID], Cast([Total_Sales] as varchar), Cast([Ordered_Item_Quantity] as varchar), Cast([Day] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TimSalesLastMonthShopify_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_TimSalesLastMonthShopify_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_TimSalesLastMonthShopify_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_TimSalesLastMonthShopify_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_TimSalesLastMonthShopify_Incr_temp_view"
    end



  