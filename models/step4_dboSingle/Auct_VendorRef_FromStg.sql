{{ config(materialized='table',schema='dbo')}}
Select
	cast([OldVendorID] as int) [OldVendorID],
	cast([NewVendorID] as int) [NewVendorID],
	cast([VendorAuctionID] as int) [VendorAuctionID] 
From stg.[Auct_VendorRef_FinalView]