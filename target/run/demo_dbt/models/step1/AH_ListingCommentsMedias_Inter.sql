
  
  if object_id ('"stg"."AH_ListingCommentsMedias_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingCommentsMedias_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingCommentsMedias_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ListingCommentsMedias_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ListingCommentsMedias_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	[CreatedOn] [CreatedOn],
	[MediaId] [MediaID],
	[CommentId] [CommentID],
	[DisplayOrder] [DisplayOrder]
From stg.[AH_ListingCommentsMedias_Raw]
    ');

  CREATE TABLE "stg"."AH_ListingCommentsMedias_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingCommentsMedias_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ListingCommentsMedias_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingCommentsMedias_Inter__dbt_tmp_temp_view"
    end


