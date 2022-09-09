{{ config(materialized='view',schema='stg')}}
Select
	[ChildRoles],[ParentRoles],[OID],[OptimisticLockField] 
From [CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Incr] 
Where [dbt_valid_to] is null