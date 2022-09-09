{{ config(materialized='view',schema='stg')}}
Select
	[OldVendorID],[NewVendorID],[VendorAuctionID] 
From [Auct_VendorRef_Incr] 
Where [dbt_valid_to] is null