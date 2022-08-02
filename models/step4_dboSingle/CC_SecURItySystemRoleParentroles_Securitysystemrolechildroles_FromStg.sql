{{ config(materialized='table',schema='dbo')}}
Select
	cast([ChildRoles] as nvarchar(4000)) [ChildRoles],
	cast([ParentRoles] as nvarchar(4000)) [ParentRoles],
	cast([OID] as nvarchar(4000)) [OID],
	cast([OptimisticLockField] as int) [OptimisticLockField] 
From stg.[CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_FinalView]