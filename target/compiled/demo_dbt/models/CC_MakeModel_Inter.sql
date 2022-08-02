
Select
	CreateDate CreateDate,
	ModifyDate ModifyDate,
	Id ID,
	VehicleTypeId VehicleTypeID,
	CountryId CountryID,
	CategoryId CategoryID,
	IsActive IsActive,
	cast(Make as nvarchar(4000)) Make,
	cast(Model as nvarchar(4000)) Model,
	cast(MakePlural as nvarchar(4000)) Makeplural,
	cast(ModelPlural as nvarchar(4000)) Modelplural,
	cast(RelatedModelSlugs as nvarchar(4000)) RelatedModelslugs
From CC_MakeModel_Raw