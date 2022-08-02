{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorsurChargeID] as int) [VendorsurChargeID],
	cast([VendorAuctionID] as int) [VendorAuctionID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([Surchagecost] as numeric(19,4)) [Surchagecost] 
From stg.[Auct_VendorsurCharge_FinalView]