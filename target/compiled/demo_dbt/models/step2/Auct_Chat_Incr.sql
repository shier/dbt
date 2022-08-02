
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(ToUserID as varchar), Cast(FromUsersID as varchar), Cast(UpdateEventID as varchar), Message)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Chat_Inter]
	)
Select * From hashData
