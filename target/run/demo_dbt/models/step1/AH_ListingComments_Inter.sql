
  
  if object_id ('"stg"."AH_ListingComments_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingComments_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."AH_ListingComments_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."AH_ListingComments_Inter__dbt_tmp"
    end


   EXEC('create view stg.AH_ListingComments_Inter__dbt_tmp_temp_view as
    
Select
	[Id] [ID],
	[IsBid] [IsBID],
	[Approved] [Approved],
	[parentId] [ParentID],
	[ReportCount] [ReportCount],
	[UserId] [UserID],
	[ListingId] [ListingID],
	[CreatedOn] [CreatedOn],
	[UpdatedOn] [UpdatedOn],
	[DeletedOn] [DeletedOn],
	cast([UserName] as nvarchar(4000)) [UserName],
	cast([Comment] as nvarchar(4000)) [Comment]
From stg.[AH_ListingComments_Raw]
    ');

  CREATE TABLE "stg"."AH_ListingComments_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.AH_ListingComments_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."AH_ListingComments_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."AH_ListingComments_Inter__dbt_tmp_temp_view"
    end


