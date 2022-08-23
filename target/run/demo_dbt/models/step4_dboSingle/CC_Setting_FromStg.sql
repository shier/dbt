
  
  if object_id ('"dbo"."CC_Setting_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Setting_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_Setting_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_Setting_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_Setting_FromStg__dbt_tmp_temp_view as
    
Select
	cast([SettingName] as nvarchar(4000)) [SettingName],
	cast([SettingValue] as nvarchar(4000)) [SettingValue] 
From stg.[CC_Setting_FinalView]
    ');

  CREATE TABLE "dbo"."CC_Setting_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_Setting_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_Setting_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_Setting_FromStg__dbt_tmp_temp_view"
    end


