
  
  if object_id ('"dbo"."AH_Properties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Properties__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_Properties__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_Properties__dbt_tmp"
    end


   EXEC('create view dbo.AH_Properties__dbt_tmp_temp_view as
    
Select
	cast([Value] as nvarchar(4000)) [Value],
	cast([Name] as nvarchar(4000)) [Name],
	cast([CreatedOn] as datetime) [CreatedOn],
	cast([UpdatedOn] as datetime) [UpdatedOn],
	cast([DeletedOn] as datetime) [DeletedOn],
	cast([ID] as int) [Id],
	cast([LineItemID] as int) [LineItemId] 
From stg.[AH_Properties_FinalView]
    ');

  CREATE TABLE "dbo"."AH_Properties__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_Properties__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_Properties__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_Properties__dbt_tmp_temp_view"
    end


