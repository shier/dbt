create view "stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FinalView__dbt_tmp" as
    
Select
	[ChildRoles],[ParentRoles],[OID],[OptimisticLockField] 
From [CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Incr]
