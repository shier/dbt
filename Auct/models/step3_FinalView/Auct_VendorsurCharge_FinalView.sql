{{ config(materialized='view',schema='stg')}}
Select
	[VendorsurChargeID],[VendorAuctionID],[Created],[UpdateEventID],[Surchagecost] 
From stg.[Auct_VendorsurCharge_Incr] 
Where [dbt_valid_to] is null