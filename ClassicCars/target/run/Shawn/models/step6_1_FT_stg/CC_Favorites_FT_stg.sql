
  
  if object_id ('"stg"."CC_Favorites_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Favorites_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Favorites_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Favorites_FT_stg__dbt_tmp"
    end


   EXEC('create view stg.CC_Favorites_FT_stg__dbt_tmp_temp_view as
    
SELECT
	[FavoritePK],
	[CreateDateUTC] AS [CreatedUTC],
	[ModifyDateUTC] AS [ModifiedDateUTC],
	[IsActive],
	[ListingFK] AS [ListingID],
	[UserFK] AS [UserID],
	[DataTokenID]
FROM [stg].[CC_Favorites_FinalView]
    ');

  CREATE TABLE "stg"."CC_Favorites_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Favorites_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Favorites_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Favorites_FT_stg__dbt_tmp_temp_view"
    end


