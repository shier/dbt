{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorTypeID] as int) [VendorTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_VendorType_FinalView]