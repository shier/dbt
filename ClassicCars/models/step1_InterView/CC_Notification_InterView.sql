{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[UserId] [UserID],
	cast([DeviceID] as nvarchar(4000)) [DeviceID]
From stg.[CC_Notification_Raw]
