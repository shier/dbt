{{ config(materialized='view',schema='stg')}}
Select
	[UnitPrice],[No_],[No_2],[Description],[Description2],[BaseUnitofMeasure],[ItemCategoryCode] 
From [Mer_TempProducts_Incr]