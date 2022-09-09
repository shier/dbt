{{ config(materialized='view',schema='stg')}}
Select
	cast([ChildRoles] as nvarchar(4000)) [ChildRoles],
	cast([ParentRoles] as nvarchar(4000)) [ParentRoles],
	cast([OID] as nvarchar(4000)) [OID],
	[OptimisticLockField] [OptimisticLockField]
From stg.[CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Raw]
