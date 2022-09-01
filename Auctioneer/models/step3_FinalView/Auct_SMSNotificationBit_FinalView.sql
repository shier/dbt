{{ config(materialized='view',schema='stg')}}
Select
	[NotificationBitID],[Description] 
From stg.[Auct_SMSNotificationBit_Incr] 
Where [dbt_valid_to] is null