
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UserID as varchar), ClaimType, ClaimValue)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Userclaims_Inter]
	)
Select * From hashData
