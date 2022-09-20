
  
  if object_id ('"dbo"."CC_SysDiagrams__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SysDiagrams__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SysDiagrams__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SysDiagrams__dbt_tmp"
    end


   EXEC('create view dbo.CC_SysDiagrams__dbt_tmp_temp_view as
    
Select
	cast([Principal_ID] as int) [principal_id],
	cast([Diagram_ID] as int) [diagram_id],
	cast([Version] as int) [version],
	cast([Name] as nvarchar(4000)) [name],
	cast([Definition] as varbinary(8000)) [definition] 
From stg.[CC_SysDiagrams_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SysDiagrams__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SysDiagrams__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SysDiagrams__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SysDiagrams__dbt_tmp_temp_view"
    end


