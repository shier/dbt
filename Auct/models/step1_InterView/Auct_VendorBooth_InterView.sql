{{ config(materialized='view',schema='stg')}}
Select
	[VENDORBOOTHID] [VendorBoothID],
	[BOOTHID] [BoothID],
	[VENDORAUCTIONID] [VendorAuctionID],
	[UPDATEEVENTID] [UpdateEventID],
	[CREATED] [Created]
From stg.[Auct_VendorBooth_Raw]
