{{ config(materialized='view',schema='stg')}}
Select
	[VendorNotificationID],[VendorID],[AuctionType],[ReceiveInfo],[UpdateEventID],[Created] 
From stg.[Auct_VendorNotification_Incr] 
Where [dbt_valid_to] is null