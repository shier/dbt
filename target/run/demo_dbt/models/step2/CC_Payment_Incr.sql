
      
  
  if object_id ('"stg"."CC_Payment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Payment_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Payment_Incr"','U') is not null
    begin
    drop table "stg"."CC_Payment_Incr"
    end


   EXEC('create view stg.CC_Payment_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(ListingID as varchar), Cast(PaymentTypeID as varchar), Cast(CouponID as varchar), Cast(ChargeAmount as varchar), Cast(DiscountAmount as varchar), Cast(Approved as varchar), Cast(IsActive as varchar), FirstName, LastName, TelePhone, CustomerIP, LineItemDescription, TransactionID, AuthorizationCode, ResponseCode, Address1, Address2, City, State, ZipCode, Email, ResponseReasonCode, GatewayMessage)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Payment_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_Payment_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Payment_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_Payment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Payment_Incr_temp_view"
    end



  