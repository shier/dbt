{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorBoothID] as int) [VendorBoothID],
	cast([BoothID] as int) [BoothID],
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Created] as datetime) [Created] 
From stg.[Auct_VendorBooth_FinalView]