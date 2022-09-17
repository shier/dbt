
  
  if object_id ('"dbo"."CC_SecURItySystemTypePermissionsoBJect__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemTypePermissionsoBJect__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SecURItySystemTypePermissionsoBJect__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SecURItySystemTypePermissionsoBJect__dbt_tmp"
    end


   EXEC('create view dbo.CC_SecURItySystemTypePermissionsoBJect__dbt_tmp_temp_view as
    
Select
	cast([OptimisticLockField] as int) [OptimisticLockField],
	cast([GcRecord] as int) [GcRecord],
	cast([OBJectType] as int) [OBJectType],
	cast([OID] as nvarchar(4000)) [OID],
	cast([TargetType] as nvarchar(4000)) [TargetType],
	cast([Owner] as nvarchar(4000)) [Owner],
	cast([AllowRead] as bit) [AllowRead],
	cast([Allowwrite] as bit) [Allowwrite],
	cast([AllowCreate] as bit) [AllowCreate],
	cast([AllowDelete] as bit) [AllowDelete],
	cast([AllowNavigate] as bit) [AllowNavigate] 
From stg.[CC_SecURItySystemTypePermissionsoBJect_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SecURItySystemTypePermissionsoBJect__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SecURItySystemTypePermissionsoBJect__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SecURItySystemTypePermissionsoBJect__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemTypePermissionsoBJect__dbt_tmp_temp_view"
    end


