
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(CreateDateUTC as varchar), Cast(ThReadID as varchar), ServerName, Message)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_InmemorySearchEngineLogging_Inter]
	)
Select * From hashData
