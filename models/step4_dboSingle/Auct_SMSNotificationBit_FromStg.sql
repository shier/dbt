{{ config(materialized='table',schema='dbo')}}
Select
	cast([NotificationBitID] as int) [NotificationBitID],
	cast([Description] as nvarchar(4000)) [Description] 
From stg.[Auct_SMSNotificationBit_FinalView]