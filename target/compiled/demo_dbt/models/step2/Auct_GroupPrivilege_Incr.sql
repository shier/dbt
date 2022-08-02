
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([GroupID] as varchar), Cast([PrivilegeID] as varchar), [Deny], Cast([Created] as varchar), Cast([UpdateEventID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_GroupPrivilege_Inter]
	)
Select * From hashData
