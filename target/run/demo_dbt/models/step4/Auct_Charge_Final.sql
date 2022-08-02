
  
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
	[ChargeID],[Amount],[UnitPrice],[Created],[ActionDate],[CanceledChargeID],[ReservationID],[ApprovalStateID],[ApprovedByUserID],[VendorID],[MediaID],[SponsorID],[UserID],[CanCancel],[CanceledByChargeID],[FeeTypeID],[UpdateEventID],[InvoiceID],[ConsignmentID],[BidderID],[DealerID],[PEndingNavision],[OverrideReason],[RejectionReason],[DocumentID],[Comments],[IsTaxable] 
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


