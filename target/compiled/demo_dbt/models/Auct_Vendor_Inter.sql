
Select
	LEGACYVENDORID LegacyVendorID,
	CUSTOMERACCOUNTID CustomerAccountID,
	VENDORSTATUSID VendorStatusID,
	VENDORTYPEID VendorTypeID,
	PRODUCTSERVICETYPEID ProductServiceTypeID,
	UPDATEEVENTID UpdateEventID,
	ADDRESSID AddressID,
	VENDORID VendorID,
	CREATED Created,
	cast(JOBTITLE as nvarchar(4000)) JobTitle
From Auct_Vendor_Raw