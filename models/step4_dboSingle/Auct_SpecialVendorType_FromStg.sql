{{ config(materialized='table',schema='dbo')}}
Select
	cast([SpecialVendorTypeID] as int) [SpecialVendorTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_SpecialVendorType_FinalView]