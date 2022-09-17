
  
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
	cast([Approved] as bit) [IsApproved],
	cast([ParentID] as int) [ParentID],
	cast([ReportCount] as int) [ReportCount],
	cast([ID] as int) [CommentID],
	cast([UserID] as int) [UserID],
	cast([ListingID] as int) [ListingID],
	cast([CreatedOn] as datetime) [Created],
	cast([UpdatedOn] as datetime) [UpdatedDate],
	cast([DeletedOn] as datetime) [DeletedDate],
	cast([UserName] as nvarchar(500)) [Name],
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


