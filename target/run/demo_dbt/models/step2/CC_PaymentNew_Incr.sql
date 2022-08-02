
      
  
  if object_id ('"stg"."CC_PaymentNew_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_PaymentNew_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."CC_PaymentNew_Incr"','U') is not null
    begin
    drop table "stg"."CC_PaymentNew_Incr"
    end


   EXEC('create view stg.CC_PaymentNew_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(OrderTotal as varchar), Cast(OrderDiscount as varchar), Cast(ChargeAmount as varchar), CustomerInfo, PaymentInfo, TransactionInfo, Cast(IsActive as varchar), Cast(Success as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(UserID as varchar), Cast(PaymentTypeID as varchar), Cast(CouponID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_PaymentNew_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."CC_PaymentNew_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_PaymentNew_Incr_temp_view)

   
  
  if object_id ('"stg"."CC_PaymentNew_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."CC_PaymentNew_Incr_temp_view"
    end



  