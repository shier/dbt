create view "stg"."Mer_TempProducts_FinalView__dbt_tmp" as
    
Select
	[UnitPrice],[No_],[No_2],[Description],[Description2],[BaseUnitofMeasure],[ItemCategoryCode] 
From [Mer_TempProducts_Incr]
