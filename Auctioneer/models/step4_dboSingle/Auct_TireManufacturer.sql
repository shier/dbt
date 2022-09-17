{{ config(materialized='table',schema='dbo')}}
Select
	cast([TireManufacturerID] as int) [TIREMANUFACTURERID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_TireManufacturer_FinalView]