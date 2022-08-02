
      
  
  if object_id ('"stg"."CC_Audit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Audit_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Audit_Incr"','U') is not null
    begin
    drop table "stg"."CC_Audit_Incr"
    end


   EXEC('create view stg.CC_Audit_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(ListingID as varchar), Cast(DateShowcasedUTC as varchar), Cast(DateShowcaseExpiresUTC as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Audit_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Audit_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Audit_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Audit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Audit_Incr_temp_view"
    end



  