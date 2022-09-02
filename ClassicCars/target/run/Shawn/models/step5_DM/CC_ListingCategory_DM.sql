
  
  if object_id ('"dbo"."CC_ListingCategory_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingCategory_DM__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ListingCategory_DM__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ListingCategory_DM__dbt_tmp"
    end


   EXEC('create view dbo.CC_ListingCategory_DM__dbt_tmp_temp_view as
    
SELECT
	[Id] AS [ListingCategory_Skey],
	[Description]
FROM [stg].[CC_ListingCategory_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ListingCategory_DM__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ListingCategory_DM__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ListingCategory_DM__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ListingCategory_DM__dbt_tmp_temp_view"
    end


