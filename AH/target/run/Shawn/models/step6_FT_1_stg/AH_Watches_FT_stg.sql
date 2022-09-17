
  
  if object_id ('"dbo_stg"."AH_Watches_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_Watches_FT_stg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo_stg"."AH_Watches_FT_stg__dbt_tmp"','U') is not null
    begin
    drop table "dbo_stg"."AH_Watches_FT_stg__dbt_tmp"
    end


   EXEC('create view dbo_stg.AH_Watches_FT_stg__dbt_tmp_temp_view as
    
SELECT
		[Id] AS [WatchID],
		[UserId] AS [UserID],
		[ListingId] AS [ListingID],
		[LastUpdatedUser],
		[CreatedOn] AS [CreatedDate],
		[UpdatedOn] AS [UpdatedDate],
		[DeletedOn] AS [DeletedDate]
From [stg].[AH_Watches_FinalView]
    ');

  CREATE TABLE "dbo_stg"."AH_Watches_FT_stg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo_stg.AH_Watches_FT_stg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo_stg"."AH_Watches_FT_stg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo_stg"."AH_Watches_FT_stg__dbt_tmp_temp_view"
    end


