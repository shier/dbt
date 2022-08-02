
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(LegacyVendorID as varchar), Cast(CustomerAccountID as varchar), Cast(VendorStatusID as varchar), Cast(VendorTypeID as varchar), Cast(ProductServiceTypeID as varchar), Cast(UpdateEventID as varchar), Cast(AddressID as varchar), Cast(Created as varchar), JobTitle)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Vendor_Inter]
	)
Select * From hashData
