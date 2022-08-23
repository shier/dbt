
  
  if object_id ('"dbo"."CC_SearchHistory_Listings_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SearchHistory_Listings_JoinFromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SearchHistory_Listings_JoinFromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SearchHistory_Listings_JoinFromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SearchHistory_Listings_JoinFromStg__dbt_tmp_temp_view as
    
SELECT
	C_SHL.[SearchHistoryFK],
	C_SHL.[ListingFK],
	C_SH.[UserFK] [SearchHistoryUserID]
FROM [stg].[CC_SearchHistory_Listings_FinalView] AS C_SHL 
JOIN [stg].[CC_SearchHistory_FinalView] AS C_SH ON C_SH.[SearchHistoryPK]=C_SHL.[SearchHistoryFK]
    ');

  CREATE TABLE "dbo"."CC_SearchHistory_Listings_JoinFromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SearchHistory_Listings_JoinFromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SearchHistory_Listings_JoinFromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SearchHistory_Listings_JoinFromStg__dbt_tmp_temp_view"
    end


