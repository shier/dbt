
      
  
  if object_id ('"stg"."Auct_Charge_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Charge_Incr_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Charge_Incr"','U') is not null
    begin
    drop table "stg"."Auct_Charge_Incr"
    end


   EXEC('create view stg.Auct_Charge_Incr_temp_view as
    
With hashData as (
		Select
			HASHBYTES(''MD5'', concat(Cast(Amount as varchar), Cast(UnitPrice as varchar), Cast(Created as varchar), Cast(ActionDate as varchar), Cast(CanceledChargeID as varchar), Cast(ReservationID as varchar), Cast(ApprovalStateID as varchar), Cast(ApprovedByUserID as varchar), Cast(VendorID as varchar), Cast(MediaID as varchar), Cast(SponsorID as varchar), Cast(UserID as varchar), Cast(CanCancel as varchar), Cast(CanceledByChargeID as varchar), Cast(FeeTypeID as varchar), Cast(UpdateEventID as varchar), Cast(InvoiceID as varchar), Cast(ConsignmentID as varchar), Cast(BidderID as varchar), Cast(DealerID as varchar), PEndingNavision, OverrideReason, RejectionReason, DocumentID, Comments, IsTaxable)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Charge_Inter]
	)
Select * From hashData

    ');

  CREATE TABLE "stg"."Auct_Charge_Incr"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Charge_Incr_temp_view)

   
  
  if object_id ('"stg"."Auct_Charge_Incr_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Charge_Incr_temp_view"
    end



  