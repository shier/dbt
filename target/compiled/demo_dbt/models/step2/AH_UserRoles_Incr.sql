
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UserID as varchar), Cast(RoleID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_UserRoles_Inter]
	)
Select * From hashData
