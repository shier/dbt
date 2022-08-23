
  
  if object_id ('"dbo"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp_temp_view"
    end


   
    
  if object_id ('"dbo"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp"','U') is not null
    begin
    drop table "dbo"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp"
    end


   EXEC('create view dbo.CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp_temp_view as
    
Select
	cast([ChildRoles] as nvarchar(4000)) [ChildRoles],
	cast([ParentRoles] as nvarchar(4000)) [ParentRoles],
	cast([OID] as nvarchar(4000)) [OID],
	cast([OptimisticLockField] as int) [OptimisticLockField] 
From stg.[CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FinalView]
    ');

  CREATE TABLE "dbo"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp"
    WITH(
      DISTRIBUTION = ROUND_ROBIN,
      CLUSTERED COLUMNSTORE INDEX
      )
    AS (SELECT * FROM dbo.CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp_temp_view)

   
  
  if object_id ('"dbo"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp_temp_view"','V') is not null
    begin
    drop view "dbo"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FromStg__dbt_tmp_temp_view"
    end


