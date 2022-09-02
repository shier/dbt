
  
  if object_id ('"stg"."CC_ShareInfo_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ShareInfo_FT_tmp__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_ShareInfo_FT_tmp__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_ShareInfo_FT_tmp__dbt_tmp"
    end


   EXEC('create view stg.CC_ShareInfo_FT_tmp__dbt_tmp_temp_view as
    

WITH CC_ShareInfo_CTE AS (
    SELECT 
        shareinfo.[ShareInfoID], 
        shareinfo.[CreatedUTC], 
        shareinfo.[Browser], 
        shareinfo.[UserID], 
        buyer.[PotentialBuyer_Skey], 
        shareinfo.[AppUsed], 
        shareinfo.[ListingID], 
        lisTing.[Car_Skey], 
        shareinfo.[UserAgent], 
        shareinfo.[UserEmail], 
        shareinfo.[IPAddress], 
        shareinfo.[Latitude], 
        shareinfo.[Longitude]
    FROM  [stg].[CC_ShareInfo_FT_stg] AS shareinfo 
    -- FOR [Car_Skey]
    LEFT JOIN [stg].[CC_Listing_FT_stg] AS listing 
        ON shareinfo.[ListingID]=listing.[ListingID]
    -- FOR [PotentialBuyer_Skey]
    LEFT JOIN [dbo].[CC_PotentialBuyer_DM] AS buyer 
        ON shareinfo.[UserID]=buyer.[UserID]
    
    -- -- FOR [Customer_Skey]
    -- LEFT JOIN [dbo].[CC_Customer_Archive_DM] cxarchive
    --     ON shareinfo.[UserID]=cxarchive.[UserID]
    -- -- WHERE [IsCurrent]=1
)
SELECT 
    [ShareInfoID], 
	[CreatedUTC], 
	[Browser], 
	[UserID], 
    [PotentialBuyer_Skey], 
	[AppUsed], 
	[ListingID], 
    [Car_Skey], 
	[UserAgent], 
	[UserEmail], 
	[IPAddress], 
	[Latitude], 
	[Longitude]
FROM CC_ShareInfo_CTE
    ');

  CREATE TABLE "stg"."CC_ShareInfo_FT_tmp__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_ShareInfo_FT_tmp__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_ShareInfo_FT_tmp__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_ShareInfo_FT_tmp__dbt_tmp_temp_view"
    end


