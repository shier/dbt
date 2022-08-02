
Select
	[VendorNotificationID],[Created],[VendorID],[UpdateEventID],[ReceiveInfo],[AuctionType] 
From stg.[Auct_VendorNotification_Incr] 
Where [dbt_valid_to] is null