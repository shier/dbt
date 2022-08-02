
  
  if object_id ('"stg"."Auct_Charge_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Charge_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_Charge_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_Charge_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_Charge_Final__dbt_tmp_temp_view as
    
Select
	[ChargeID],[Amount],[UnitPrice],[FeeTypeID],[Created],[UpdateEventID],[InvoiceID],[Comments],[IsTaxable],[ConsignmentID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[UserID],[CanCancel],[CanceledByChargeID],[CanceledChargeID],[ReservationID],[PEndingNavision],[OverrideReason],[ApprovalStateID],[ApprovedByUserID],[RejectionReason],[ActionDate],[DocumentID] 
From stg.[Auct_Charge_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_Charge_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_Charge_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_Charge_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_Charge_Final__dbt_tmp_temp_view"
    end


