
  
  if object_id ('"stg"."CC_SecURItysystemRole_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemRole_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemRole_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemRole_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItysystemRole_Inter__dbt_tmp_temp_view as
    
Select
	cast(Name as nvarchar(4000)) Name,
	IsAdministrative Isadministrative,
	CanEditModel CaneditModel,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	ObjectType OBJectType,
	cast(Oid as nvarchar(4000)) OID
From CC_SecURItysystemRole_Raw
    ');

  CREATE TABLE "stg"."CC_SecURItysystemRole_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemRole_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemRole_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemRole_Inter__dbt_tmp_temp_view"
    end


