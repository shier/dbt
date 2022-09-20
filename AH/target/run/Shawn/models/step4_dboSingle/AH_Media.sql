
  
  if object_id ('"dbo"."AH_Media__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Media__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Media__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Media__dbt_tmp"
    end


   EXEC('create view dbo.AH_Media__dbt_tmp_temp_view as
    
Select
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([GUID] as uniqueidentifier) [GUID],
	cast([DefaultvariationName] as nvarchar(500)) [DefaultVariationName],
	cast([Loader] as nvarchar(500)) [Loader],
	cast([Saver] as nvarchar(500)) [Saver],
	cast([LastUpdatedUser] as nvarchar(500)) [LastUpdatedUser],
	cast([ConText] as nvarchar(4000)) [Context],
	cast([Status] as nvarchar(100)) [Status] 
From stg.[AH_Media_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Media__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Media__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Media__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Media__dbt_tmp_temp_view"
    end


