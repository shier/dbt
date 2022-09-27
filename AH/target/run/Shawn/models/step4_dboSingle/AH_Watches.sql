
  
  if object_id ('"dbo"."AH_Watches__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Watches__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Watches__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Watches__dbt_tmp"
    end


   EXEC('create view dbo.AH_Watches__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [Id],
	cast([UserID] as int) [UserId],
	cast([ListingID] as int) [ListingId],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser] 
From stg.[AH_Watches_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Watches__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Watches__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Watches__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Watches__dbt_tmp_temp_view"
    end


