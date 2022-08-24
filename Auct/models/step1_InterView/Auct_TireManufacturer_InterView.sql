{{ config(materialized='view',schema='stg')}}
Select
	[TIREMANUFACTURERID] [TireManufacturerID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_TireManufacturer_Raw]
