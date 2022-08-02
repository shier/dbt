
  
  if object_id ('"stg"."CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp_temp_view as
    
Select
	cast([Oid] as nvarchar(4000)) [OID],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[ObjectType] [OBJectType],
	cast([TargetType] as nvarchar(4000)) [TargetType],
	cast([Owner] as nvarchar(4000)) [Owner],
	[AllowRead] [AllowRead],
	[AllowWrite] [Allowwrite],
	[AllowCreate] [AllowCreate],
	[AllowDelete] [AllowDelete],
	[AllowNavigate] [AllowNavigate]
From stg.[CC_SecURItySystemTypePermissionsoBJect_Raw]
    ');

  CREATE TABLE "stg"."CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItySystemTypePermissionsoBJect_Inter__dbt_tmp_temp_view"
    end


