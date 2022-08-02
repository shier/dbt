
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	IsActive IsActive,
	cast(BadMake as nvarchar(4000)) BadMake,
	cast(BadModel as nvarchar(4000)) BadModel,
	cast(GoodMake as nvarchar(4000)) GoodMake,
	cast(GoodModel as nvarchar(4000)) GoodModel,
	cast(GoodTrim as nvarchar(4000)) GoodTrim
From CC_MakeModelcorrection_Raw