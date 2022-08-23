
  
  if object_id ('"dbo"."CC_SecURItySystemRole_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemRole_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SecURItySystemRole_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SecURItySystemRole_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SecURItySystemRole_FromStg__dbt_tmp_temp_view as
    
Select
	cast([OID] as nvarchar(4000)) [OID],
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OBJectType] as int) [OBJectType],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Isadministrative] as bit) [Isadministrative],
	cast([CaneditModel] as bit) [CaneditModel] 
From stg.[CC_SecURItySystemRole_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SecURItySystemRole_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SecURItySystemRole_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SecURItySystemRole_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemRole_FromStg__dbt_tmp_temp_view"
    end


