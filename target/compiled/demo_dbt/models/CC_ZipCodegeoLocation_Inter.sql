
Select
	Id ID,
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Latitude Latitude,
	Longitude Longitude,
	IsActive IsActive,
	cast(ZipCode as nvarchar(4000)) ZipCode
From CC_ZipCodegeoLocation_Raw