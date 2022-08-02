
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([UsersID] as varchar), Cast([PrivilegeID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UserPrivileges_Inter]
	)
Select * From hashData
