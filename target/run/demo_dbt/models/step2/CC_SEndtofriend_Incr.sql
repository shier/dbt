
      
  
  if object_id ('"stg"."CC_SEndtofriend_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SEndtofriend_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SEndtofriend_Incr"','U') is not null
    begin
    drop table "stg"."CC_SEndtofriend_Incr"
    end


   EXEC('create view stg.CC_SEndtofriend_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(ReceiverEmail, Message, IpAddress, Browser, UserAgent, SEnderName, SEnderEmail, ReceiverName, Cast(EmailFilterCodeID as varchar), Cast(ListingID as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(IsActive as varchar), Cast(SEnderwantsCopy as varchar), Cast(WantsNewsLetter as varchar), Cast(WantsrrcInfo as varchar), Cast(EmailProcessed as varchar), Cast(CopyProcessed as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SEndtofriend_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_SEndtofriend_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SEndtofriend_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_SEndtofriend_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SEndtofriend_Incr_temp_view"
    end



  