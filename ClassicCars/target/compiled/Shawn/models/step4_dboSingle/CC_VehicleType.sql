
Select
	cast([Description] as nvarchar(1000)) [CarType],
	cast([ID] as int) [ID] 
From stg.[CC_VehicleType_FinalView]