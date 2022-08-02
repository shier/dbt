
      
  
  if object_id ('"stg"."AH_BannedUsers_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_BannedUsers_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."AH_BannedUsers_Incr"','U') is not null
    begin
    drop table "stg"."AH_BannedUsers_Incr"
    end


   EXEC('create view stg.AH_BannedUsers_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(IsLockedOut as varchar), Lastip, UserName, FName, LName, Cast(UserID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_BannedUsers_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."AH_BannedUsers_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_BannedUsers_Incr_temp_view)

   
  
  if object_id ('"stg"."AH_BannedUsers_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."AH_BannedUsers_Incr_temp_view"
    end



  