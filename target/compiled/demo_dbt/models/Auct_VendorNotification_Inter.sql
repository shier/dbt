
Select
	CREATED Created,
	VENDORNOTIFICATIONID VendorNotificationID,
	VENDORID VendorID,
	UPDATEEVENTID UpdateEventID,
	cast(RECEIVEINFO as nvarchar(4000)) ReceiveInfo,
	cast(AUCTIONTYPE as nvarchar(4000)) AuctionType
From Auct_VendorNotification_Raw