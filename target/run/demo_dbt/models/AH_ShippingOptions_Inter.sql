
  
  if object_id ('"stg"."AH_ShippingOptions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ShippingOptions_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ShippingOptions_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ShippingOptions_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ShippingOptions_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	ShippingMethodId ShippingMethodID,
	ListingId ListingID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	FirstItemAmount FirstItEMAmount,
	AdditionalItemAmount AdditionalItEMAmount
From AH_ShippingOptions_Raw
    ');

  CREATE TABLE "stg"."AH_ShippingOptions_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ShippingOptions_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ShippingOptions_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ShippingOptions_Inter__dbt_tmp_temp_view"
    end


