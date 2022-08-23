
  
  if object_id ('"dbo"."AH_MediaassetMetaData_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_MediaassetMetaData_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_MediaassetMetaData_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_MediaassetMetaData_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.AH_MediaassetMetaData_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID_RWXMediaAssetMetaData],
	cast([MediaassetID] as int) [MediaAssetID],
	cast([MediaMetaDataID] as int) [MediaMetaDataID_RWXMediaAssetMetaData],
	cast([CreatedOn] as datetime) [Created_RWXMediaAssetMetaData],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMediaAssetMetaData],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMediaAssetMetaData] 
From stg.[AH_MediaassetMetaData_FinalView]
    ');

  CREATE TABLE "dbo"."AH_MediaassetMetaData_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_MediaassetMetaData_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_MediaassetMetaData_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_MediaassetMetaData_FromStg__dbt_tmp_temp_view"
    end


