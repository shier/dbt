
  
  if object_id ('"dbo"."AH_ListingComments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingComments__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_ListingComments__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_ListingComments__dbt_tmp"
    end


   EXEC('create view dbo.AH_ListingComments__dbt_tmp_temp_view as
    
Select
	cast([IsBID] as bit) [IsBid],
	cast([Approved] as bit) [Approved],
	cast([ParentID] as int) [parentId],
	cast([ReportCount] as int) [ReportCount],
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([ListingID] as int) [ListingId],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([UserName] as nvarchar(500)) [UserName],
	cast([Comment] as nvarchar(4000)) [Comment] 
From stg.[AH_ListingComments_FinalView]
    ');

  CREATE TABLE "dbo"."AH_ListingComments__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_ListingComments__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_ListingComments__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_ListingComments__dbt_tmp_temp_view"
    end


