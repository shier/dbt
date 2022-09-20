
  
  if object_id ('"dbo"."CC_SecURItySystemRole__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemRole__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SecURItySystemRole__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SecURItySystemRole__dbt_tmp"
    end


   EXEC('create view dbo.CC_SecURItySystemRole__dbt_tmp_temp_view as
    
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GCRecord],
	cast([OBJectType] as int) [ObjectType],
	cast([OID] as nvarchar(4000)) [Oid],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Isadministrative] as bit) [IsAdministrative],
	cast([CaneditModel] as bit) [CanEditModel] 
From stg.[CC_SecURItySystemRole_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SecURItySystemRole__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SecURItySystemRole__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SecURItySystemRole__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemRole__dbt_tmp_temp_view"
    end


