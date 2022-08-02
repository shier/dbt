
  
  if object_id ('"stg"."AH_Media_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Media_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Media_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Media_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Media_Inter__dbt_tmp_temp_view as
    
Select
	Id ID,
	CreatedOn Createdon,
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	cast(GUID as nvarchar(4000)) GUID,
	cast(DefaultVariationName as nvarchar(4000)) DefaultvariationName,
	cast(Loader as nvarchar(4000)) Loader,
	cast(Saver as nvarchar(4000)) Saver,
	cast(LastUpdatedUser as nvarchar(4000)) LastUpdatedUser,
	cast(Context as nvarchar(4000)) ConText,
	cast(Status as nvarchar(4000)) Status
From AH_Media_Raw
    ');

  CREATE TABLE "stg"."AH_Media_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Media_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Media_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Media_Inter__dbt_tmp_temp_view"
    end


