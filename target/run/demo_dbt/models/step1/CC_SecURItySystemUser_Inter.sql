
  
  if object_id ('"stg"."CC_SecURItySystemUser_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItySystemUser_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItySystemUser_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItySystemUser_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItySystemUser_Inter__dbt_tmp_temp_view as
    
Select
	cast([UserName] as nvarchar(4000)) [UserName],
	[ChangePasswordOnFirstLogon] [ChangePasswordonFirstLogon],
	[IsActive] [IsActive],
	cast([Oid] as nvarchar(4000)) [OID],
	cast([StoredPassword] as nvarchar(4000)) [StoredPassword],
	[OptimisticLockField] [OptimisticLockField],
	[GCRecord] [GcRecord],
	[ObjectType] [OBJectType]
From stg.[CC_SecURItySystemUser_Raw]
    ');

  CREATE TABLE "stg"."CC_SecURItySystemUser_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItySystemUser_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItySystemUser_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItySystemUser_Inter__dbt_tmp_temp_view"
    end


