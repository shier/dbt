
Select
	cast([VendorID] as int) [VENDORID],
	cast([CustomerAccountID] as int) [CUSTOMERACCOUNTID],
	cast([VendorStatusID] as int) [VENDORSTATUSID],
	cast([VendorTypeID] as int) [VENDORTYPEID],
	cast([ProductServiceTypeID] as int) [PRODUCTSERVICETYPEID],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID],
	cast([AddressID] as int) [ADDRESSID],
	cast([LegacyVendorID] as int) [LEGACYVENDORID],
	cast([JobTitle] as nvarchar(4000)) [JOBTITLE] 
From stg.[Auct_Vendor_FinalView]