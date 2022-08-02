{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([AuctionID] as int) [AuctionID],
	cast([VendorID] as int) [VendorID],
	cast([ContractDate] as datetime) [ContractDate],
	cast([ApplicationDate] as datetime) [ApplicationDate],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Comments] as nvarchar(4000)) [Comments],
	cast([Legacy_VendorID] as int) [Legacy_VendorID],
	cast([SpecialVendorTypeID] as int) [SpecialVendorTypeID],
	cast([Spacecost] as numeric(19,4)) [Spacecost],
	cast([SpecialVendorValue] as numeric(19,4)) [SpecialVendorValue] 
From stg.[Auct_VendorAuction_FinalView]