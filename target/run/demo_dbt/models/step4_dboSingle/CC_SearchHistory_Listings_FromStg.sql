
  
  if object_id ('"dbo"."CC_SearchHistory_Listings_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SearchHistory_Listings_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SearchHistory_Listings_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SearchHistory_Listings_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SearchHistory_Listings_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SearchHistoryFK] as int) [SearchHistoryFK],
	cast([ListingFK] as int) [ListingFK] 
From stg.[CC_SearchHistory_Listings_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SearchHistory_Listings_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SearchHistory_Listings_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SearchHistory_Listings_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SearchHistory_Listings_FromStg__dbt_tmp_temp_view"
    end


