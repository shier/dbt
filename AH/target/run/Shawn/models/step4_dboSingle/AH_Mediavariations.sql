
  
  if object_id ('"dbo"."AH_Mediavariations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Mediavariations__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Mediavariations__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Mediavariations__dbt_tmp"
    end


   EXEC('create view dbo.AH_Mediavariations__dbt_tmp_temp_view as
    
Select
	cast([CreatedOn] as datetime) [Created_RWXMediaVariations],
	cast([UpdatedOn] as datetime) [UpdatedDate_RWXMediaVariations],
	cast([DeletedOn] as datetime) [DeletedDate_RWXMediaVariations],
	cast([ID] as int) [ID],
	cast([MediaassetID] as int) [MediaAssetID_RWX_MediaVariations],
	cast([MediaID] as int) [MediaID],
	cast([Name] as nvarchar(500)) [Name_RWXMediaVariations] 
From stg.[AH_Mediavariations_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Mediavariations__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Mediavariations__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Mediavariations__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Mediavariations__dbt_tmp_temp_view"
    end


