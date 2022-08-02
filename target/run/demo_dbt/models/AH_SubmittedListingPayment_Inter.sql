
  
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
	Amount Amount,
	cast(TransactionId as nvarchar(4000)) TransactionID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	HasProPhotography HasproPhotography,
	HasProMarketing HasproMarketing,
	Id ID,
	ConsignorId ConsignorID,
	ListingId ListingID
From AH_SubmittedListingPayment_Raw
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


