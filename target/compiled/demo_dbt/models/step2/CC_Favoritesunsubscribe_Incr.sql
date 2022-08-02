
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UserFK as varchar), Cast(UnsubscribeDateUTC as varchar), DataTokenID)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Favoritesunsubscribe_Inter]
	)
Select * From hashData
