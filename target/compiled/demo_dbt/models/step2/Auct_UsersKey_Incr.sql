
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(LastActivity as varchar), Cast(Created as varchar), Cast(UpdateEventID as varchar), Cast(UsersID as varchar), SessionID, IpAddress)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_UsersKey_Inter]
	)
Select * From hashData
