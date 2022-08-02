
      
  
  if object_id ('"stg"."Mer_Terminals_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Terminals_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Terminals_Incr"','U') is not null
    begin
    drop table "stg"."Mer_Terminals_Incr"
    end


   EXEC('create view stg.Mer_Terminals_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(BuilDType, DeviceTypeName, MerchantID, Name, Model, Serial, SecureID, Cast(PinDisabled as varchar), Cast(OffLinePayments as varchar), Cast(OffLinePaymentsall as varchar), Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Terminals_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_Terminals_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Terminals_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_Terminals_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Terminals_Incr_temp_view"
    end



  