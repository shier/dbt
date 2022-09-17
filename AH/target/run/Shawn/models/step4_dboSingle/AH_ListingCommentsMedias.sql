
  
  if object_id ('"dbo"."AH_ListingCommentsMedias__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingCommentsMedias__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingCommentsMedias__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingCommentsMedias__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingCommentsMedias__dbt_tmp_temp_view as
    
Select
	cast([UpdatedOn] as datetime) [UpdatedDate_AHListingCommentsMedias],
	cast([DeletedOn] as datetime) [DeletedDate_AHListingCommentsMedias],
	cast([CreatedOn] as datetime) [Created_AHListingCommentsMedias],
	cast([ID] as int) [ID],
	cast([MediaID] as int) [MediaID],
	cast([CommentID] as int) [CommentID],
	cast([DisplayOrder] as int) [DisplayOrder] 
From stg.[AH_ListingCommentsMedias_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingCommentsMedias__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingCommentsMedias__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingCommentsMedias__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingCommentsMedias__dbt_tmp_temp_view"
    end


