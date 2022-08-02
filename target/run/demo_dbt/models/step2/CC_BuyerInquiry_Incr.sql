
      
  
  if object_id ('"stg"."CC_BuyerInquiry_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiry_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_BuyerInquiry_Incr"','U') is not null
    begin
    drop table "stg"."CC_BuyerInquiry_Incr"
    end


   EXEC('create view stg.CC_BuyerInquiry_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(EmailSentUTC as varchar), Cast(WantsrrcInfo as varchar), Cast(IsActive as varchar), Cast(EmailProcessed as varchar), Cast(CopyProcessed as varchar), Cast(FollowupProcessed as varchar), Cast(ListingID as varchar), Cast(EmailFilterCodeID as varchar), Cast(WantsNewsLetter as varchar), UserAgent, Browser, FirstName, LastName, Email, Phone, Message, IpAddress)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_BuyerInquiry_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_BuyerInquiry_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_BuyerInquiry_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_BuyerInquiry_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_BuyerInquiry_Incr_temp_view"
    end



  