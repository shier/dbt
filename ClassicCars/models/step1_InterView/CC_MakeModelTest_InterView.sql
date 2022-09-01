{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[VehicleTypeId] [VehicleTypeID],
	[CountryId] [CountryID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[IsActive] [IsActive],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([MakePlural] as nvarchar(4000)) [Makeplural],
	cast([ModelPlural] as nvarchar(4000)) [Modelplural],
	cast([MakeSlug] as nvarchar(4000)) [Makeslug],
	cast([ModelSlug] as nvarchar(4000)) [Modelslug],
	cast([RelatedModelSlugs] as nvarchar(4000)) [RelatedModelslugs]
From stg.[CC_MakeModelTest_Raw]
