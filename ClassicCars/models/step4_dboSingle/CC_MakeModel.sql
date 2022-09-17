{{ config(materialized='table',schema='dbo')}}
Select
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([ID] as int) [Id],
	cast([VehicleTypeID] as int) [VehicleTypeId],
	cast([CountryID] as int) [CountryId],
	cast([CategoryID] as int) [CategoryId],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Makeplural] as nvarchar(4000)) [MakePlural],
	cast([Modelplural] as nvarchar(4000)) [ModelPlural],
	cast([RelatedModelslugs] as nvarchar(4000)) [RelatedModelSlugs],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_MakeModel_FinalView]