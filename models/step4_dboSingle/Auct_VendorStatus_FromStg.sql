{{ config(materialized='table',schema='dbo')}}
Select
	cast([VendorStatusID] as int) [VendorStatusID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_VendorStatus_FinalView]