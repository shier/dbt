{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorID] as int) [VendorID],
	cast([CustomerAccountID] as int) [CustomerAccountID],
	cast([VendorStatusID] as int) [VendorStatusID],
	cast([VendorTypeID] as int) [VendorTypeID],
	cast([ProductServiceTypeID] as int) [ProductServiceTypeID],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID],
	cast([AddressID] as int) [AddressID],
	cast([LegacyVendorID] as int) [LegacyVendorID],
	cast([JobTitle] as nvarchar(4000)) [JobTitle] 
From stg.[Auct_Vendor_FinalView]