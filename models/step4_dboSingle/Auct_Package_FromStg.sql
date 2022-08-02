{{ config(materialized='table',schema='dbo')}}
Select
	cast([PackageID] as int) [PackageID],
	cast([PackageTypeID] as int) [PackageTypeID],
	cast([PackageTypeName] as nvarchar(4000)) [PackageTypeName],
	cast([TrackingNumber] as nvarchar(4000)) [TrackingNumber],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([DateCreated] as datetime) [DateCreated],
	cast([AuctionID] as int) [AuctionID],
	cast([PackageCarrierID] as int) [PackageCarrierID],
	cast([Note] as nvarchar(4000)) [Note] 
From stg.[Auct_Package_FinalView]