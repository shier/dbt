{{ config(materialized='view',schema='stg')}}
Select
	[OLDVENDORID] [OldVendorID],
	[NEWVENDORID] [NewVendorID],
	[VENDORAUCTIONID] [VendorAuctionID]
From stg.[Auct_VendorRef_Raw]
