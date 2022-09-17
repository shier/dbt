
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ID] as int) [ID],
	cast([UserID] as int) [UserID],
	cast([DeviceID] as nvarchar(4000)) [DeviceID] 
From stg.[CC_Notification_FinalView]