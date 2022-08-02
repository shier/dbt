
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	FilterCodeId FilterCodeID,
	cast(FilterValue as nvarchar(4000)) FilterValue,
	cast(FilterType as nvarchar(4000)) FilterType,
	IsActive IsActive
From CC_EmailFilter_Raw