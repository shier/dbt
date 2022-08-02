
  
  if object_id ('"stg"."Auct_ChargeDeleted_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeDeleted_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_ChargeDeleted_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_ChargeDeleted_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_ChargeDeleted_Final__dbt_tmp_temp_view as
    
Select
	[ChargeID],[FeeTypeID],[Created],[UpdateEventID],[InvoiceID],[Comments],[IsTaxable],[ConsignmentID],[BidderID],[DealerID],[VendorID],[MediaID],[SponsorID],[UserID],[Amount] 
From [Auct_ChargeDeleted_Incr]
    ');

  CREATE TABLE "stg"."Auct_ChargeDeleted_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_ChargeDeleted_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_ChargeDeleted_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_ChargeDeleted_Final__dbt_tmp_temp_view"
    end


