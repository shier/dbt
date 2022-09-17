
  
  if object_id ('"dbo"."AH_Mediaassets__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Mediaassets__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Mediaassets__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Mediaassets__dbt_tmp"
    end


   EXEC('create view dbo.AH_Mediaassets__dbt_tmp_temp_view as
    
Select
	cast([CreatedOn] as datetime) [Created_RWXMediaAssets],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMediaAssets],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMediaAssets],
	cast([DaTestamp] as datetime) [DateStamp],
	cast([ID] as int) [MediaAssetID_RWX_MediaAssets],
	cast([Type] as nvarchar(500)) [Type],
	cast([Reference] as nvarchar(4000)) [Reference],
	cast([Sha1] as nvarchar(4000)) [Sha1] 
From stg.[AH_Mediaassets_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Mediaassets__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Mediaassets__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Mediaassets__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Mediaassets__dbt_tmp_temp_view"
    end


