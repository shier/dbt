
  
  if object_id ('"stg"."CC_Favorites_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Favorites_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Favorites_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Favorites_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_Favorites_Inter__dbt_tmp_temp_view as
    
Select
	cast(DataTokenID as nvarchar(4000)) DataTokenID,
	CreateDateUTC CreateDateUTC,
	ModifyDateUTC ModifyDateUTC,
	IsActive IsActive,
	UserFK Userfk,
	FavoritePK Favoritepk,
	ListingFK Listingfk
From CC_Favorites_Raw
    ');

  CREATE TABLE "stg"."CC_Favorites_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Favorites_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Favorites_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Favorites_Inter__dbt_tmp_temp_view"
    end


