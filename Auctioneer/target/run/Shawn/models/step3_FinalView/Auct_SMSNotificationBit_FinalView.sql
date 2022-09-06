create view "stg"."Auct_SMSNotificationBit_FinalView__dbt_tmp" as
    
Select
	[NotificationBitID],[Description] 
From stg.[Auct_SMSNotificationBit_Incr] 
Where [dbt_valid_to] is null
