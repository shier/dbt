
  
  if object_id ('"dbo"."AH_ListingMedias_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingMedias_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingMedias_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingMedias_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingMedias_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([MediaID] as int) [MediaID],
	cast([ListingID] as int) [ListingID],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[AH_ListingMedias_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingMedias_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingMedias_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingMedias_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingMedias_FromStg__dbt_tmp_temp_view"
    end


