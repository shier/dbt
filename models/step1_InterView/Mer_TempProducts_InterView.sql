{{ config(materialized='view',schema='stg')}}
Select
	[UnitPrice] [UnitPrice],
	cast([No_] as nvarchar(4000)) [No_],
	cast([No_2] as nvarchar(4000)) [No_2],
	cast([Description] as nvarchar(4000)) [Description],
	cast([Description2] as nvarchar(4000)) [Description2],
	cast([BaseUnitofMeasure] as nvarchar(4000)) [BaseUnitofMeasure],
	cast([ItemCategoryCode] as nvarchar(4000)) [ItemCategoryCode]
From stg.[Mer_TempProducts_Raw]
