
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([ChildRoles], [ParentRoles], [OID], Cast([OptimisticLockField] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."CC_SecURItySystemRoleParentroles_Securitysystemrolechildroles_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
