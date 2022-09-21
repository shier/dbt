
Select
	cast([ParkingTypeID] as int) [PARKINGTYPEID],
	cast([Name] as nvarchar(4000)) [NAME],
	cast([Created] as datetime) [CREATED],
	cast([UpdateEventID] as int) [UPDATEEVENTID] 
From stg.[Auct_ParkingType_FinalView]