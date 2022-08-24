create view "dbo_stg"."Auct_SMSNotificationBit_InterView__dbt_tmp" as
    
Select
	[NOTIFICATIONBITID] [NotificationBitID],
	cast([DESCRIPTION] as nvarchar(4000)) [Description]
From stg.[Auct_SMSNotificationBit_Raw]
