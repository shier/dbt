
  
  if object_id ('"stg"."AH_SubmittedListingPayment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SubmittedListingPayment_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_SubmittedListingPayment_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_SubmittedListingPayment_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_SubmittedListingPayment_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	cast([TransactionId] as nvarchar(4000)) [TransactionID],
	[Amount] [Amount],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[ListingId] [ListingID],
	[ConsignorId] [ConsignorID],
	[HasProMarketing] [HasproMarketing],
	[HasProPhotography] [HasproPhotography]
From stg.[AH_SubmittedListingPayment_Raw]
    ');

  CREATE TABLE "stg"."AH_SubmittedListingPayment_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_SubmittedListingPayment_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_SubmittedListingPayment_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_SubmittedListingPayment_Inter__dbt_tmp_temp_view"
    end


