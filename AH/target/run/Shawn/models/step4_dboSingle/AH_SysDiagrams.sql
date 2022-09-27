
  
  if object_id ('"dbo"."AH_SysDiagrams__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_SysDiagrams__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."AH_SysDiagrams__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."AH_SysDiagrams__dbt_tmp"
    end


   EXEC('create view dbo.AH_SysDiagrams__dbt_tmp_temp_view as
    
Select
	cast([Diagram_ID] as int) [diagram_id],
	cast([Version] as int) [version],
	cast([Principal_ID] as int) [principal_id],
	cast([Definition] as varbinary(8000)) [definition],
	cast([Name] as nvarchar(4000)) [name] 
From stg.[AH_SysDiagrams_FinalView]
    ');

  CREATE TABLE "dbo"."AH_SysDiagrams__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.AH_SysDiagrams__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."AH_SysDiagrams__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."AH_SysDiagrams__dbt_tmp_temp_view"
    end


