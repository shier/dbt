
With hashData as (
		Select
			HASHBYTES('MD5', concat(SocialprovIDErKey, Cast(IsActive as varchar), Cast(CreateDate as varchar), Cast(ModifyDate as varchar), Cast(UserID as varchar), Cast(SocialprovIDErID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_LoginSocial_Inter]
	)
Select * From hashData
