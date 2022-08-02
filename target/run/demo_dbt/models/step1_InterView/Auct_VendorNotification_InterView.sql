create view "stg"."Auct_VendorNotification_InterView__dbt_tmp" as
    
Select
	[VENDORNOTIFICATIONID] [VendorNotificationID],
	[VENDORID] [VendorID],
	cast([AUCTIONTYPE] as nvarchar(4000)) [AuctionType],
	cast([RECEIVEINFO] as nvarchar(4000)) [ReceiveInfo],
	[UPDATEEVENTID] [UpdateEventID],
	[CREATED] [Created]
From stg.[Auct_VendorNotification_Raw]
