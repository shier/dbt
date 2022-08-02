{{ config(materialized='view',schema='stg')}}
Select
	[Id] [ID],
	[CreateDate] [CreateDate],
	[ModifyDate] [ModifyDate],
	[VehicleTypeId] [VehicleTypeID],
	[CountryId] [CountryID],
	[CategoryId] [CategoryID],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([MakePlural] as nvarchar(4000)) [Makeplural],
	cast([ModelPlural] as nvarchar(4000)) [Modelplural],
	cast([RelatedModelSlugs] as nvarchar(4000)) [RelatedModelslugs],
	[IsActive] [IsActive]
From stg.[CC_MakeModel_Raw]
