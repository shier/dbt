
  
  if object_id ('"stg"."AH_Banners_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Banners_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_Banners_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_Banners_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_Banners_Inter__dbt_tmp_temp_view as
    
Select
	UpdatedOn Updatedon,
	DeletedOn Deletedon,
	CreatedOn Createdon,
	Id ID,
	MediaId MediaID,
	cast(LinkURI as nvarchar(4000)) LinkURI,
	cast(BannerLocation as nvarchar(4000)) BannerLocation
From AH_Banners_Raw
    ');

  CREATE TABLE "stg"."AH_Banners_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_Banners_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_Banners_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_Banners_Inter__dbt_tmp_temp_view"
    end


