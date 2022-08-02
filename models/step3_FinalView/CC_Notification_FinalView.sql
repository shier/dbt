{{ config(materialized='view',schema='stg')}}
Select
	[ID],[CreateDate],[UserID],[DeviceID] 
From stg.[CC_Notification_Incr] 
Where [dbt_valid_to] is null