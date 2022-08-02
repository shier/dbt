
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDateUTC as varchar), Cast(Success as varchar), IpAddress, Message, UserAgent, AdfDoc)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_CallSourceLog_Inter]
	)
Select * From hashData
