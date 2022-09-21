
Select
	cast([NotificationBitID] as int) [NOTIFICATIONBITID],
	cast([Description] as nvarchar(4000)) [DESCRIPTION] 
From stg.[Auct_SMSNotificationBit_FinalView]