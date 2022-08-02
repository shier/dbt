
With hashData as (
		Select
			HASHBYTES('MD5', BotString) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_BotList_Inter]
	)
Select * From hashData
