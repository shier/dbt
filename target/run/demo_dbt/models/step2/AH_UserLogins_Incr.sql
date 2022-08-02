
      
  
  if object_id ('"stg"."AH_UserLogins_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UserLogins_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_UserLogins_Incr"','U') is not null
    begin
    drop table "stg"."AH_UserLogins_Incr"
    end


   EXEC('create view stg.AH_UserLogins_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''SHA2_256'', concat([LoginprovIDEr], [ProvIDErKey], Cast([UserID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_UserLogins_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_UserLogins_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_UserLogins_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_UserLogins_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_UserLogins_Incr_temp_view"
    end



  