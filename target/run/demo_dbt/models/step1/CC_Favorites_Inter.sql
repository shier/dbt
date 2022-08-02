
  
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
	[FavoritePK] [FavoritePK],
	[IsActive] [IsActive],
	[CreateDateUTC] [CreateDateUTC],
	[ModifyDateUTC] [ModifyDateUTC],
	[ListingFK] [ListingFK],
	[UserFK] [UserFK],
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID]
From stg.[CC_Favorites_Raw]
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


