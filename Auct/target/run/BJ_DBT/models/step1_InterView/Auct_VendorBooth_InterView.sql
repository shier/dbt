create view "dbo_stg"."Auct_VendorBooth_InterView__dbt_tmp" as
    
Select
	[VENDORBOOTHID] [VendorBoothID],
	[BOOTHID] [BoothID],
	[VENDORAUCTIONID] [VendorAuctionID],
	[UPDATEEVENTID] [UpdateEventID],
	[CREATED] [Created]
From stg.[Auct_VendorBooth_Raw]
