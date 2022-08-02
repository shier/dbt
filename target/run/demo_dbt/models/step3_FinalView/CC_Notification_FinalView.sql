create view "stg"."CC_Notification_FinalView__dbt_tmp" as
    
Select
	[ID],[CreateDate],[UserID],[DeviceID] 
From stg.[CC_Notification_Incr] 
Where [dbt_valid_to] is null
