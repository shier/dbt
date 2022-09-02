
  
  if object_id ('"stg"."CC_Favorites_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Favorites_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_Favorites_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_Favorites_FT_tmp__dbt_tmp"
    end


   EXEC('create view stg.CC_Favorites_FT_tmp__dbt_tmp_temp_view as
    
WITH Favorites_CTE AS (
    SELECT 
    	favorites.[FavoritePK], 
        favorites.[CreatedUTC], 
        favorites.[ModifiedDateUTC], 
        favorites.[IsActive], 
        favorites.[ListingID], 
        listing.[Car_Skey],  
        favorites.[UserID], 
        buyer.[PotentialBuyer_Skey], 
        favorites.[DataTokenID]
    FROM [stg].[CC_Favorites_FT_stg] favorites
    -- FOR [Car_Skey]
    LEFT JOIN [stg].[CC_Listing_FT_stg] AS listing
        ON favorites.[ListingID]=listing.[ListingID]
    -- FOR [PotentialBuyer_Skey]
    LEFT JOIN [dbo].[CC_PotentialBuyer_DM] AS buyer 
        ON favorites.[UserID]=buyer.[UserID]
    WHERE [IsCurrent]=1 -- need inspection
    -- WHERE favorites.[CreatedUTC] BETWEEN buyer.[Created] AND buyer.[ModifiedDate]
)
SELECT 
	[FavoritePK], 
	[CreatedUTC], 
	[ModifiedDateUTC], 
	[IsActive], 
	[ListingID], 
    [Car_Skey],  
	[UserID], 
    [PotentialBuyer_Skey], 
	[DataTokenID]
FROM Favorites_CTE
    ');

  CREATE TABLE "stg"."CC_Favorites_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_Favorites_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_Favorites_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_Favorites_FT_tmp__dbt_tmp_temp_view"
    end


