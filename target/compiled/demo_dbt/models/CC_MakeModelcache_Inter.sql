
Select
	cast(Make as nvarchar(4000)) Make,
	cast(Model as nvarchar(4000)) Model,
	IsActive IsActive,
	Id ID,
	Year Year,
	VehicleCount VehicleCount,
	CreateDate CreateDate,
	ModifyDate ModifyDate
From CC_MakeModelcache_Raw