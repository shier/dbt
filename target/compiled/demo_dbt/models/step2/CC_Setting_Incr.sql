
With hashData as (
		Select
			HASHBYTES('MD5', SettingValue) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Setting_Inter]
	)
Select * From hashData
