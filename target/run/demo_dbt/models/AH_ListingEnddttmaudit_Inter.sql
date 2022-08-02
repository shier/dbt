
  
  if object_id ('"stg"."AH_ListingEnddttmaudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingEnddttmaudit_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingEnddttmaudit_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ListingEnddttmaudit_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ListingEnddttmaudit_Inter__dbt_tmp_temp_view as
    
Select
	SQLDateStamp SqlDaTestamp,
	EndDTTM Enddttm,
	Id ID,
	ListingID ListingID,
	SourceListingID SourceListingID,
	cast(Origin as nvarchar(4000)) Origin
From AH_ListingEnddttmaudit_Raw
    ');

  CREATE TABLE "stg"."AH_ListingEnddttmaudit_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingEnddttmaudit_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ListingEnddttmaudit_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingEnddttmaudit_Inter__dbt_tmp_temp_view"
    end


