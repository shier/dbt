
      
  
  if object_id ('"stg"."Auct_PaymentMethod_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PaymentMethod_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_PaymentMethod_Incr"','U') is not null
    begin
    drop table "stg"."Auct_PaymentMethod_Incr"
    end


   EXEC('create view stg.Auct_PaymentMethod_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(MinimumDepositValue as varchar), Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(ProcessorID as varchar), Cast(WebDisplayBit as varchar), VendorDisplay, ConsignDisplay, MediaDisplay, SponsorDisplay, BidderDisplay, LotDisplay, Name, BidDisplay, WebDisplayName, WebDescription, BCPaymentCode)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_PaymentMethod_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_PaymentMethod_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_PaymentMethod_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_PaymentMethod_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_PaymentMethod_Incr_temp_view"
    end



  