
      
  
  if object_id ('"stg"."CC_Emailaudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Emailaudit_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Emailaudit_Incr"','U') is not null
    begin
    drop table "stg"."CC_Emailaudit_Incr"
    end


   EXEC('create view stg.CC_Emailaudit_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(EmailAddress, MandrillID, MandrillStatus, MandrillrejectReason, Cast(ListingID as varchar), Cast(Deactivatestage as varchar), Cast(DateSentUTC as varchar), Cast(ListingModifyDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Emailaudit_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Emailaudit_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Emailaudit_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Emailaudit_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Emailaudit_Incr_temp_view"
    end



  