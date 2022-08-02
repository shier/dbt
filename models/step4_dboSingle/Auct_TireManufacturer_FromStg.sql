{{ config(materialized='table',schema='dbo')}}
Select
	cast([TireManufacturerID] as int) [TireManufacturerID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_TireManufacturer_FinalView]