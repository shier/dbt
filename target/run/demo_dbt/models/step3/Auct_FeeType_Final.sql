
  
  if object_id ('"stg"."Auct_FeeType_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FeeType_Final__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."Auct_FeeType_Final__dbt_tmp"','U') is not null
    begin
    drop table "stg"."Auct_FeeType_Final__dbt_tmp"
    end


   EXEC('create view stg.Auct_FeeType_Final__dbt_tmp_temp_view as
    
Select
	[FeeTypeID],[ShowonWeb],[DefaultAmount],[DefaultPercentage],[Name],[FeeCategoryID],[FeePayerID],[Created],[UpdateEventID],[TaxRateID],[AuctionID],[InActive],[ProcessorID],[UseMultiplier],[DebitProcessor],[CreditProcessor],[PaymentProcessor],[RefundProcessor],[WebStartDate],[WebEndDate],[Amenities],[SectionTitle],[ExpirationMessage],[FeeTypeGUID],[ApplicationReportID],[OnlineApplicationReportID],[DocumentID],[BCProcessFor],[BCdocumentType] 
From stg.[Auct_FeeType_Incr] 
Where [dbt_valid_to] is null
    ');

  CREATE TABLE "stg"."Auct_FeeType_Final__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.Auct_FeeType_Final__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."Auct_FeeType_Final__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."Auct_FeeType_Final__dbt_tmp_temp_view"
    end


