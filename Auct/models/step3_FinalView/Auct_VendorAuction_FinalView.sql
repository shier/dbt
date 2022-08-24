{{ config(materialized='view',schema='stg')}}
Select
	[VendorAuctionID],[AuctionID],[VendorID],[ContractDate],[ApplicationDate],[Created],[UpdateEventID],[Comments],[Legacy_VendorID],[SpecialVendorTypeID],[Spacecost],[SpecialVendorValue] 
From stg.[Auct_VendorAuction_Incr] 
Where [dbt_valid_to] is null