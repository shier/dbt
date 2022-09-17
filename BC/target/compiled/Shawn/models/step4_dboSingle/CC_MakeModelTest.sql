
Select
	cast([ID] as int) [Id],
	cast([VehicleTypeID] as int) [VehicleTypeId],
	cast([CountryID] as int) [CountryId],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([IsActive] as bit) [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Makeplural] as nvarchar(4000)) [MakePlural],
	cast([Modelplural] as nvarchar(4000)) [ModelPlural],
	cast([Makeslug] as nvarchar(4000)) [MakeSlug],
	cast([Modelslug] as nvarchar(4000)) [ModelSlug],
	cast([RelatedModelslugs] as nvarchar(4000)) [RelatedModelSlugs] 
From stg.[CC_MakeModelTest_FinalView]