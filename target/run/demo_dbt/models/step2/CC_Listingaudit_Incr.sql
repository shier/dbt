
      
  
  if object_id ('"stg"."CC_Listingaudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listingaudit_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Listingaudit_Incr"','U') is not null
    begin
    drop table "stg"."CC_Listingaudit_Incr"
    end


   EXEC('create view stg.CC_Listingaudit_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Newvalue, UserName, DdlAction, FieldName, Oldvalue, Cast(ListingFK as varchar), Cast(AuditDateTimeUTC as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Listingaudit_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Listingaudit_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Listingaudit_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Listingaudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Listingaudit_Incr_temp_view"
    end



  