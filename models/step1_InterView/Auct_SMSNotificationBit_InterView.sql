{{ config(materialized='view',schema='stg')}}
Select
	[NOTIFICATIONBITID] [NotificationBitID],
	cast([DESCRIPTION] as nvarchar(4000)) [Description]
From stg.[Auct_SMSNotificationBit_Raw]
