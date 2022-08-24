{{ config(materialized='view',schema='stg')}}
Select
	[PARKINGTYPEID] [ParkingTypeID],
	cast([NAME] as nvarchar(4000)) [Name],
	[CREATED] [Created],
	[UPDATEEVENTID] [UpdateEventID]
From stg.[Auct_ParkingType_Raw]
