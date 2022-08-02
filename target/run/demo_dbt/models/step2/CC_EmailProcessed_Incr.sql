
      
  
  if object_id ('"stg"."CC_EmailProcessed_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailProcessed_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_EmailProcessed_Incr"','U') is not null
    begin
    drop table "stg"."CC_EmailProcessed_Incr"
    end


   EXEC('create view stg.CC_EmailProcessed_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(SentFrom, Replyto, IpAddress, Template, Fields, Meta, Response, MandrillID, MandrillrejectReason, SuBJect, Cast(ResponseCode as varchar), Cast(ForeignID as varchar), Cast(DateSent as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_EmailProcessed_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_EmailProcessed_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_EmailProcessed_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_EmailProcessed_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_EmailProcessed_Incr_temp_view"
    end



  