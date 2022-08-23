
  
  if object_id ('"dbo"."AH_CategoryListings_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CategoryListings_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_CategoryListings_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_CategoryListings_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_CategoryListings_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([ListingID] as int) [ListingID],
	cast([CategoryID] as int) [CategoryID] 
From stg.[AH_CategoryListings_FinalView]
    ');

  CREATE TABLE "dbo"."AH_CategoryListings_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_CategoryListings_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_CategoryListings_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_CategoryListings_FromStg__dbt_tmp_temp_view"
    end


