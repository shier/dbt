{{ config(materialized='table',schema='dbo')}}
Select
	cast([ID] as int) [ID],
	cast([CreateDate] as datetime) [CreateDate],
	cast([ModifyDate] as datetime) [ModifyDate],
	cast([VehicleTypeID] as int) [VehicleTypeID],
	cast([CountryID] as int) [CountryID],
	cast([CategoryID] as int) [CategoryID],
	cast([Make] as nvarchar(4000)) [Make],
	cast([Model] as nvarchar(4000)) [Model],
	cast([Makeplural] as nvarchar(4000)) [Makeplural],
	cast([Modelplural] as nvarchar(4000)) [Modelplural],
	cast([RelatedModelslugs] as nvarchar(4000)) [RelatedModelslugs],
	cast([IsActive] as bit) [IsActive] 
From stg.[CC_MakeModel_FinalView]