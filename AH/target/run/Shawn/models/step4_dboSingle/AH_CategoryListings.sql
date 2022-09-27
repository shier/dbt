
  
  if object_id ('"dbo"."AH_CategoryListings__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CategoryListings__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_CategoryListings__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_CategoryListings__dbt_tmp"
    end


   EXEC('create view dbo.AH_CategoryListings__dbt_tmp_temp_view as
    
Select
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([ID] as int) [Id],
	cast([ListingID] as int) [ListingId],
	cast([CategoryID] as int) [CategoryId] 
From stg.[AH_CategoryListings_FinalView]
    ');

  CREATE TABLE "dbo"."AH_CategoryListings__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_CategoryListings__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_CategoryListings__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CategoryListings__dbt_tmp_temp_view"
    end


