
  
  if object_id ('"dbo"."AH_Version__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Version__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Version__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Version__dbt_tmp"
    end


   EXEC('create view dbo.AH_Version__dbt_tmp_temp_view as
    
Select
	cast([VersionNumber] as nvarchar(4000)) [VersionNumber],
	cast([Status] as nvarchar(4000)) [Status],
	cast([DaTestamp] as datetime) [DaTestamp],
	cast([ID] as int) [ID] 
From stg.[AH_Version_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Version__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Version__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Version__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Version__dbt_tmp_temp_view"
    end


