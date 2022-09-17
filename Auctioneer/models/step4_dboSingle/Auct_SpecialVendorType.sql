{{ config(materialized='table',schema='dbo')}}
Select
	cast([SpecialVendorTypeID] as int) [SPECIALVENDORTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_SpecialVendorType_FinalView]