
  
  if object_id ('"stg"."CC_SecURItysystemUser_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemUser_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItysystemUser_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItysystemUser_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItysystemUser_Inter__dbt_tmp_temp_view as
    
Select
	ChangePasswordOnFirstLogon ChangePasswordonFirstLogon,
	IsActive IsActive,
	OptimisticLockField OptimisticLockField,
	GCRecord GcRecord,
	ObjectType OBJectType,
	cast(Oid as nvarchar(4000)) OID,
	cast(StoredPassword as nvarchar(4000)) StoredPassword,
	cast(UserName as nvarchar(4000)) UserName
From CC_SecURItysystemUser_Raw
    ');

  CREATE TABLE "stg"."CC_SecURItysystemUser_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItysystemUser_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItysystemUser_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItysystemUser_Inter__dbt_tmp_temp_view"
    end


