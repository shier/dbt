
  
  if object_id ('"stg"."AH_Listingdecorations_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Listingdecorations_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Listingdecorations_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Listingdecorations_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Listingdecorations_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	DecorationId DecorationID,
	ListingId ListingID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon
From AH_Listingdecorations_Raw
    ');

  CREATE TABLE "stg"."AH_Listingdecorations_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Listingdecorations_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Listingdecorations_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Listingdecorations_Inter__dbt_tmp_temp_view"
    end


