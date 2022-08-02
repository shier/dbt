
  
  if object_id ('"stg"."CC_XpweakReference_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_XpweakReference_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_XpweakReference_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_XpweakReference_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_XpweakReference_Inter__dbt_tmp_temp_view as
    
Select
	cast(Oid as nvarchar(4000)) OID,
	cast(TargetKey as nvarchar(4000)) TargetKey,
	TargetType TargetType,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	ObjectType OBJectType
From CC_XpweakReference_Raw
    ');

  CREATE TABLE "stg"."CC_XpweakReference_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_XpweakReference_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_XpweakReference_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_XpweakReference_Inter__dbt_tmp_temp_view"
    end


