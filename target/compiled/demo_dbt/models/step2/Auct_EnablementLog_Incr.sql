
With hashData as (
		Select
			HASHBYTES('MD5', concat(Reason, Enabled, Cast(Created as varchar), Cast(UsersID as varchar), Cast(UpdateEventID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_EnablementLog_Inter]
	)
Select * From hashData
