{{ config(materialized='view',schema='stg')}}
Select
	[VENDORSURCHARGEID] [VendorsurChargeID],
	[VENDORAUCTIONID] [VendorAuctionID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[SURCHAGECOST] [Surchagecost]
From stg.[Auct_VendorsurCharge_Raw]
