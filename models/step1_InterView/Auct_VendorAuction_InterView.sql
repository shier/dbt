{{ config(materialized='view',schema='stg')}}
Select
	[VENDORAUCTIONID] [VendorAuctionID],
	[AUCTIONID] [AuctionID],
	[VENDORID] [VendorID],
	[CONTRACTDATE] [ContractDate],
	[APPLICATIONDATE] [ApplicationDate],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	cast([COMMENTS] as nvarchar(4000)) [Comments],
	[LEGACY_VENDORID] [Legacy_VendorID],
	[SPECIALVENDORTYPEID] [SpecialVendorTypeID],
	[SPACECOST] [Spacecost],
	[SPECIALVENDORVALUE] [SpecialVendorValue]
From stg.[Auct_VendorAuction_Raw]
