
  
  if object_id ('"stg"."AH_SubmittedListingPayment_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SubmittedListingPayment_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SubmittedListingPayment_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_SubmittedListingPayment_FT_tmp__dbt_tmp"
    end


   EXEC('create view stg.AH_SubmittedListingPayment_FT_tmp__dbt_tmp_temp_view as
    
SELECT
		slp.[SubmittedListingPaymentID],
		c.[Consignor_Skey],
		slp.[UserID],
		slp.[ListingID],
		slp.[Amount],
		slp.[HasProPhotography],
		slp.[HasProMarketing],
		slp.[TransactionID],
		slp.[CreatedDate],
		slp.[UpdatedDate]
FROM
	[stg].[AH_SubmittedListingPayment_FT_stg] slp
left join [dbo].[AH_Consignors_DM] c on slp.UserID=c.UserID
    ');

  CREATE TABLE "stg"."AH_SubmittedListingPayment_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SubmittedListingPayment_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_SubmittedListingPayment_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SubmittedListingPayment_FT_tmp__dbt_tmp_temp_view"
    end


