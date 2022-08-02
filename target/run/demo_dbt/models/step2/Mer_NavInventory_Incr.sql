
      
  
  if object_id ('"stg"."Mer_NavInventory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavInventory_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_NavInventory_Incr"','U') is not null
    begin
    drop table "stg"."Mer_NavInventory_Incr"
    end


   EXEC('create view stg.Mer_NavInventory_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), Cast(IsTest as varchar), Cast(Price as varchar), Cast(Inventory as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_NavInventory_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_NavInventory_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_NavInventory_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_NavInventory_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_NavInventory_Incr_temp_view"
    end



  