{{ config(materialized='view',schema='stg')}}
Select
	[VendorID],[CustomerAccountID],[VendorStatusID],[VendorTypeID],[ProductServiceTypeID],[Created],[UpdateEventID],[AddressID],[LegacyVendorID],[JobTitle] 
From stg.[Auct_Vendor_Incr] 
Where [dbt_valid_to] is null