
With hashData as (
		Select
			HASHBYTES('MD5', Cast(PrivilegeID as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_NoteCategoryPrivileges_Inter]
	)
Select * From hashData
