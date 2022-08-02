
  
  if object_id ('"stg"."CC_FavoritesUnsubscribe_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_FavoritesUnsubscribe_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_FavoritesUnsubscribe_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_FavoritesUnsubscribe_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_FavoritesUnsubscribe_Inter__dbt_tmp_temp_view as
    
Select
	[FavoritesUnsubscribePK] [FavoritesUnsubscribePK],
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID],
	[UserFK] [UserFK],
	[UnsubscribeDateUTC] [UnsubscribeDateUTC]
From stg.[CC_FavoritesUnsubscribe_Raw]
    ');

  CREATE TABLE "stg"."CC_FavoritesUnsubscribe_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_FavoritesUnsubscribe_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_FavoritesUnsubscribe_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_FavoritesUnsubscribe_Inter__dbt_tmp_temp_view"
    end


