
  
  if object_id ('"stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp"','U') is not null
    begin
    drop table "stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp"
    end


   EXEC('create view stg.CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp_temp_view as
    
Select
	cast([ChildRoles] as nvarchar(4000)) [ChildRoles],
	cast([ParentRoles] as nvarchar(4000)) [ParentRoles],
	cast([OID] as nvarchar(4000)) [OID],
	[OptimisticLockField] [OptimisticLockField]
From stg.[CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Raw]
    ');

  CREATE TABLE "stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM stg.CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp_temp_view)

   
  
  if object_id ('"stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Inter__dbt_tmp_temp_view"
    end


