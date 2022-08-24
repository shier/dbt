
      
  
  if object_id ('"stg"."Mer_InventoryLevels_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_InventoryLevels_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_InventoryLevels_Incr"','U') is not null
    begin
    drop table "stg"."Mer_InventoryLevels_Incr"
    end


   EXEC('create view stg.Mer_InventoryLevels_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat(Cast([Count] as varchar), [SKU])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_InventoryLevels_InterView]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_InventoryLevels_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_InventoryLevels_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_InventoryLevels_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_InventoryLevels_Incr_temp_view"
    end



  