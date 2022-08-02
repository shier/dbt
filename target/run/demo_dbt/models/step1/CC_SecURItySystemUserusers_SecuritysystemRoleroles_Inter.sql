
  
  if object_id ('"stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp_temp_view as
    
Select
	cast([Roles] as nvarchar(4000)) [Roles],
	[OptimisticLockField] [OptimisticLockField],
	cast([Users] as nvarchar(4000)) [Users],
	cast([OID] as nvarchar(4000)) [OID]
From stg.[CC_SecURItySystemUserusers_SecuritysystemRoleroles_Raw]
    ');

  CREATE TABLE "stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItySystemUserusers_SecuritysystemRoleroles_Inter__dbt_tmp_temp_view"
    end


