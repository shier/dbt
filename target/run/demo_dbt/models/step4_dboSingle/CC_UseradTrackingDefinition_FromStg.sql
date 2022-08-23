
  
  if object_id ('"dbo"."CC_UseradTrackingDefinition_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_UseradTrackingDefinition_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_UseradTrackingDefinition_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_UseradTrackingDefinition_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_UseradTrackingDefinition_FromStg__dbt_tmp_temp_view as
    
Select
	cast([TrackingDefinition] as nvarchar(4000)) [TrackingDefinition],
	cast([DataTokenID] as nvarchar(4000)) [DataTokenID],
	cast([StartDateUTC] as datetime) [StartDateUTC],
	cast([EndDateUTC] as datetime) [EndDateUTC] 
From stg.[CC_UseradTrackingDefinition_FinalView]
    ');

  CREATE TABLE "dbo"."CC_UseradTrackingDefinition_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_UseradTrackingDefinition_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_UseradTrackingDefinition_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_UseradTrackingDefinition_FromStg__dbt_tmp_temp_view"
    end


