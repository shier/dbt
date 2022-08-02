
      
  
  if object_id ('"stg"."Mer_CloverInventory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_CloverInventory_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_CloverInventory_Incr"','U') is not null
    begin
    drop table "stg"."Mer_CloverInventory_Incr"
    end


   EXEC('create view stg.Mer_CloverInventory_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CloverModifiedDate as varchar), Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), Cast(Hidden as varchar), Cast(DefaultTaxRates as varchar), Cast(IsRevenue as varchar), Cast(Price as varchar), Cast(Cost as varchar), Cast(StockCount as varchar), PriceType, UnitName, MerchantID, Name, AlternateName, Code, SKU)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_CloverInventory_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_CloverInventory_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_CloverInventory_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_CloverInventory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_CloverInventory_Incr_temp_view"
    end



  