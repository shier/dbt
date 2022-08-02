
      
  
  if object_id ('"stg"."Auct_ChargePayment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargePayment_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ChargePayment_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ChargePayment_Incr"
    end


   EXEC('create view stg.Auct_ChargePayment_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Created as varchar), Cast(ConsignmentID as varchar), Cast(BidderID as varchar), Cast(VendorID as varchar), Cast(MediaID as varchar), Cast(SponsorID as varchar), Cast(ChargeID as varchar), Cast(RefundState as varchar), Cast(PaymentID as varchar), Cast(UpdateEventID as varchar), Cast(Amount as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ChargePayment_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ChargePayment_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ChargePayment_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ChargePayment_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargePayment_Incr_temp_view"
    end



  