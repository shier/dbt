
  
  if object_id ('"dbo"."AH_Countries__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Countries__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Countries__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Countries__dbt_tmp"
    end


   EXEC('create view dbo.AH_Countries__dbt_tmp_temp_view as
    
Select
	cast([Name] as nvarchar(500)) [Name],
	cast([Code] as char(5)) [Code],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([Enabled] as bit) [Enabled],
	cast([StateRequired] as bit) [StateRequired] 
From stg.[AH_Countries_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Countries__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Countries__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Countries__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Countries__dbt_tmp_temp_view"
    end


