{{ config(materialized='view',schema='stg')}}
Select
	[EmailNotificationID],[Active],[Name],[Description] 
From stg.[Auct_EmailNotifications_Incr] 
Where [dbt_valid_to] is null