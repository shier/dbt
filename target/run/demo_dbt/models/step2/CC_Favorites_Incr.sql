
      
  
  if object_id ('"stg"."CC_Favorites_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Favorites_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Favorites_Incr"','U') is not null
    begin
    drop table "stg"."CC_Favorites_Incr"
    end


   EXEC('create view stg.CC_Favorites_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(DataTokenID, Cast(CreateDateUTC as varchar), Cast(ModifyDateUTC as varchar), Cast(IsActive as varchar), Cast(UserFK as varchar), Cast(ListingFK as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Favorites_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Favorites_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Favorites_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Favorites_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Favorites_Incr_temp_view"
    end



  