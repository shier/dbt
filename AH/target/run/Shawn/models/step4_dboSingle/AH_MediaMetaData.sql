
  
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
	cast([Name] as nvarchar(500)) [Name_RWXMediaMetaData],
	cast([Value] as nvarchar(4000)) [Value],
	cast([ID] as int) [MediaMetaDataID_RWXMediaMetaData],
	cast([CreatedOn] as datetime) [Created_RWXMediaMetaData],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMediaMetaData],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMediaMetaData] 
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


