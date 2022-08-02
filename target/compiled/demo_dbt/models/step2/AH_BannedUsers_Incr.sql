
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(IsLockedOut as varchar), Lastip, UserName, FName, LName, Cast(UserID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_BannedUsers_Inter]
	)
Select * From hashData
