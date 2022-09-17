
  
  if object_id ('"dbo"."CC_ModuleInfo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ModuleInfo__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_ModuleInfo__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_ModuleInfo__dbt_tmp"
    end


   EXEC('create view dbo.CC_ModuleInfo__dbt_tmp_temp_view as
    
Select
	cast([ID] as int) [ID],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([Version] as nvarchar(4000)) [Version],
	cast([Name] as nvarchar(4000)) [Name],
	cast([AssemblyFileName] as nvarchar(4000)) [AssemblyFileName],
	cast([IsMain] as bit) [IsMain] 
From stg.[CC_ModuleInfo_FinalView]
    ');

  CREATE TABLE "dbo"."CC_ModuleInfo__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_ModuleInfo__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_ModuleInfo__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_ModuleInfo__dbt_tmp_temp_view"
    end


