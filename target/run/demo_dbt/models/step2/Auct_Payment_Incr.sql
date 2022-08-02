
      
  
  if object_id ('"stg"."Auct_Payment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Payment_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Payment_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Payment_Incr"
    end


   EXEC('create view stg.Auct_Payment_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(PaymentMethodID as varchar), Cast(BankAccountID as varchar), Cast(UpdateEventID as varchar), Cast(InvoiceID as varchar), Cast(RefundedByPaymentID as varchar), Cast(RefundedPaymentID as varchar), Cast(RefundApprovedByUserID as varchar), Cast(ClearedDate as varchar), Cast(PaymentDate as varchar), Cast(Created as varchar), Cast(AmountPaID as varchar), PaymentNumber, PaymentCleared, Comments, IsLotPayment)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Payment_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Payment_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Payment_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Payment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Payment_Incr_temp_view"
    end



  