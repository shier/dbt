
  
  if object_id ('"stg"."CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp_temp_view as
    
Select
	AllowRead AllowRead,
	AllowWrite Allowwrite,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	cast(Oid as nvarchar(4000)) OID,
	cast(Members as nvarchar(4000)) Members,
	cast(Criteria as nvarchar(4000)) Criteria,
	cast(Owner as nvarchar(4000)) Owner
From CC_SecURItysystemmemberperMissionsoBJect_Raw
    ');

  CREATE TABLE "stg"."CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemmemberperMissionsoBJect_Inter__dbt_tmp_temp_view"
    end


