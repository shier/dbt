
Select
	[VendorID],[LegacyVendorID],[CustomerAccountID],[VendorStatusID],[VendorTypeID],[ProductServiceTypeID],[UpdateEventID],[AddressID],[Created],[JobTitle] 
From stg.[Auct_Vendor_Incr] 
Where [dbt_valid_to] is null