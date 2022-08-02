
      
  
  if object_id ('"stg"."Mer_Employees_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Employees_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Mer_Employees_Incr"','U') is not null
    begin
    drop table "stg"."Mer_Employees_Incr"
    end


   EXEC('create view stg.Mer_Employees_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CreatedDate as varchar), Cast(Updateddate as varchar), Cast(RemovedDate as varchar), MerchantID, Name, NickName, Email, Pin, Role)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_Employees_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Mer_Employees_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Mer_Employees_Incr_temp_view)

   
  
  if object_id ('"stg"."Mer_Employees_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Mer_Employees_Incr_temp_view"
    end



  