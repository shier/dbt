
  
  if object_id ('"dbo"."CC_XpoBJectType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_XpoBJectType__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_XpoBJectType__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_XpoBJectType__dbt_tmp"
    end


   EXEC('create view dbo.CC_XpoBJectType__dbt_tmp_temp_view as
    
Select
	cast([OID] as int) [OID],
	cast([TypeName] as nvarchar(4000)) [TypeName],
	cast([AssemblyName] as nvarchar(4000)) [AssemblyName] 
From stg.[CC_XpoBJectType_FinalView]
    ');

  CREATE TABLE "dbo"."CC_XpoBJectType__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_XpoBJectType__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_XpoBJectType__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_XpoBJectType__dbt_tmp_temp_view"
    end


