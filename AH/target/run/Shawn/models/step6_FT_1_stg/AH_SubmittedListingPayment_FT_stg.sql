
  
  if object_id ('"stg"."AH_SubmittedListingPayment_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SubmittedListingPayment_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SubmittedListingPayment_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_SubmittedListingPayment_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.AH_SubmittedListingPayment_FT_stg__dbt_tmp_temp_view as
    
SELECT
		[Id] AS [SubmittedListingPaymentID],
		[ConsignorId] AS [UserID],
		[ListingId] AS [ListingID],
		[Amount],
		[HasProPhotography],
		[HasProMarketing],
		[TransactionId] AS [TransactionID],
		[CreatedOn] AS [CreatedDate],
		[UpdatedOn] AS [UpdatedDate]
FROM [stg].[AH_SubmittedListingPayment_FinalView];
    ');

  CREATE TABLE "stg"."AH_SubmittedListingPayment_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SubmittedListingPayment_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_SubmittedListingPayment_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SubmittedListingPayment_FT_stg__dbt_tmp_temp_view"
    end


