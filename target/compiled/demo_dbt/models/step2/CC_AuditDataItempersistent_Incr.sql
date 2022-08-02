
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([OptimisticLockField] as varchar), Cast([GcRecord] as varchar), Cast([ModifiedOn] as varchar), [OID], [UserName], [OperationType], [Description], [AuditeDOBJect], [OlDOBJect], [NewoBJect], [Oldvalue], [Newvalue], [PropertyName])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_AuditDataItempersistent_Inter]
	)
Select * From hashData
