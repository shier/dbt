{{ config(materialized='view',schema='stg')}}
Select
	[PACKAGEID] [PackageID],
	[PACKAGETYPEID] [PackageTypeID],
	cast([PACKAGETYPENAME] as nvarchar(4000)) [PackageTypeName],
	cast([TRACKINGNUMBER] as nvarchar(4000)) [TrackingNumber],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[DATECREATED] [DateCreated],
	[AUCTIONID] [AuctionID],
	[PACKAGECARRIERID] [PackageCarrierID],
	cast([NOTE] as nvarchar(4000)) [Note]
From stg.[Auct_Package_Raw]
