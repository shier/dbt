{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorBoothID] as int) [VENDORBOOTHID],
	cast([BoothID] as int) [BOOTHID],
	cast([VendorAuctionID] as int) [VENDORAUCTIONID],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([Created] as datetime) [CREATED] 
From stg.[Auct_VendorBooth_FinalView]