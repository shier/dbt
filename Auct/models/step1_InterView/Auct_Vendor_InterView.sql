{{ config(materialized='view',schema='stg')}}
Select
	[VENDORID] [VendorID],
	[CUSTOMERACCOUNTID] [CustomerAccountID],
	[VENDORSTATUSID] [VendorStatusID],
	[VENDORTYPEID] [VendorTypeID],
	[PRODUCTSERVICETYPEID] [ProductServiceTypeID],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID],
	[ADDRESSID] [AddressID],
	[LEGACYVENDORID] [LegacyVendorID],
	cast([JOBTITLE] as nvarchar(4000)) [JobTitle]
From stg.[Auct_Vendor_Raw]
