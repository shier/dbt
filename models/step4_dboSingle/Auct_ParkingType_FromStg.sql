{{ config(materialized='table',schema='dbo')}}
Select
	cast([ParkingTypeID] as int) [ParkingTypeID],
	cast([Name] as nvarchar(4000)) [Name],
	cast([Created] as datetime) [Created],
	cast([UpdateEventID] as int) [UpdateEventID] 
From stg.[Auct_ParkingType_FinalView]