
  
  if object_id ('"stg"."CC_AuditDataItempersistent_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_AuditDataItempersistent_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_AuditDataItempersistent_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_AuditDataItempersistent_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_AuditDataItempersistent_Inter__dbt_tmp_temp_view as
    
Select
	ModifiedOn Modifiedon,
	GCRecord GcRecord,
	OptimisticLockField OptimisticLockField,
	cast(Oid as nvarchar(4000)) OID,
	cast(UserName as nvarchar(4000)) UserName,
	cast(OperationType as nvarchar(4000)) OperationType,
	cast(Description as nvarchar(4000)) Description,
	cast(AuditedObject as nvarchar(4000)) AuditeDOBJect,
	cast(OldObject as nvarchar(4000)) OlDOBJect,
	cast(NewObject as nvarchar(4000)) NewoBJect,
	cast(OldValue as nvarchar(4000)) Oldvalue,
	cast(NewValue as nvarchar(4000)) Newvalue,
	cast(PropertyName as nvarchar(4000)) PropertyName
From CC_AuditDataItempersistent_Raw
    ');

  CREATE TABLE "stg"."CC_AuditDataItempersistent_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_AuditDataItempersistent_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_AuditDataItempersistent_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_AuditDataItempersistent_Inter__dbt_tmp_temp_view"
    end


