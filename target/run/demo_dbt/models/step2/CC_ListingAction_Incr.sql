
      
  
  if object_id ('"stg"."CC_ListingAction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingAction_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ListingAction_Incr"','U') is not null
    begin
    drop table "stg"."CC_ListingAction_Incr"
    end


   EXEC('create view stg.CC_ListingAction_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', Description) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_ListingAction_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_ListingAction_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ListingAction_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_ListingAction_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ListingAction_Incr_temp_view"
    end



  