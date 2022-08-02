
With hashData as (
		Select
			HASHBYTES('MD5', concat(DeviceID, Cast(CreateDate as varchar), Cast(UserID as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_Notification_Inter]
	)
Select * From hashData
