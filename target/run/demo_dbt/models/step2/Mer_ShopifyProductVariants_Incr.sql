
      
  
  if object_id ('"stg"."Mer_ShopifyProductVariants_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProductVariants_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_ShopifyProductVariants_Incr"','U') is not null
    begin
    drop table "stg"."Mer_ShopifyProductVariants_Incr"
    end


   EXEC('create view stg.Mer_ShopifyProductVariants_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(ProductID, Title, SKU, FulfillmentService, Option1, Option2, Option3, Barcode, WEightUnit, InventoryItemID, Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), Cast(Position as varchar), Cast(Taxable as varchar), Cast(RequiresShipping as varchar), Cast(Price as varchar), Cast(CompAreatPrice as varchar), Cast(Grams as varchar), Cast(Inventoryqty as varchar), Cast(WEight as varchar), Cast(DelayedsellOnlineqty as varchar), Cast(OldInventoryqty as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_ShopifyProductVariants_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_ShopifyProductVariants_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_ShopifyProductVariants_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_ShopifyProductVariants_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_ShopifyProductVariants_Incr_temp_view"
    end



  