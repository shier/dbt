
Select
	[VendorAuctionID],[Comments],[Spacecost],[SpecialVendorValue],[ContractDate],[ApplicationDate],[Created],[Legacy_VendorID],[SpecialVendorTypeID],[AuctionID],[VendorID],[UpdateEventID] 
From stg.[Auct_VendorAuction_Incr] 
Where [dbt_valid_to] is null