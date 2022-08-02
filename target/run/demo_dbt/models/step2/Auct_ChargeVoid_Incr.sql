
      
  
  if object_id ('"stg"."Auct_ChargeVoid_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeVoid_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ChargeVoid_Incr"','U') is not null
    begin
    drop table "stg"."Auct_ChargeVoid_Incr"
    end


   EXEC('create view stg.Auct_ChargeVoid_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Amount as varchar), Cast(UnitPrice as varchar), Comments, IsTaxable, PEndingNavision, OverrideReason, RejectionReason, Cast(DealerID as varchar), Cast(VendorID as varchar), Cast(MediaID as varchar), Cast(SponsorID as varchar), Cast(UserID as varchar), Cast(CanCancel as varchar), Cast(ChargeID as varchar), Cast(FeeTypeID as varchar), Cast(UpdateEventID as varchar), Cast(InvoiceID as varchar), Cast(ConsignmentID as varchar), Cast(BidderID as varchar), Cast(CanceledByChargeID as varchar), Cast(CanceledChargeID as varchar), Cast(ReservationID as varchar), Cast(ApprovalStateID as varchar), Cast(ApprovedByUserID as varchar), Cast(Created as varchar), Cast(ActionDate as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ChargeVoid_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_ChargeVoid_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ChargeVoid_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_ChargeVoid_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeVoid_Incr_temp_view"
    end



  