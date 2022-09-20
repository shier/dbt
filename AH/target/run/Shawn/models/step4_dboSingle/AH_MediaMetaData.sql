
  
  if object_id ('"dbo"."AH_MediaMetaData__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_MediaMetaData__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_MediaMetaData__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_MediaMetaData__dbt_tmp"
    end


   EXEC('create view dbo.AH_MediaMetaData__dbt_tmp_temp_view as
    
Select
	cast([Name] as nvarchar(500)) [Name],
	cast([Value] as nvarchar(4000)) [Value],
	cast([ID] as int) [Id],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn] 
From stg.[AH_MediaMetaData_FinalView]
    ');

  CREATE TABLE "dbo"."AH_MediaMetaData__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_MediaMetaData__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_MediaMetaData__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_MediaMetaData__dbt_tmp_temp_view"
    end


