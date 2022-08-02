
With hashData as (
		Select
			HASHBYTES('MD5', Cast(UserID as varchar)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UserTaskItems_Inter]
	)
Select * From hashData
