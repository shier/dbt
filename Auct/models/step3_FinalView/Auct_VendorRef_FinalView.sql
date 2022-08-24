{{ config(materialized='view',schema='stg')}}
Select
	[OldVendorID],[NewVendorID],[VendorAuctionID] 
From [Auct_VendorRef_Incr]