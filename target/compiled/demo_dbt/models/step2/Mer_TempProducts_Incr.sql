
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([UnitPrice] as varchar), [No_], [No_2], [Description], [Description2], [BaseUnitofMeasure], [ItemCategoryCode])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TempProducts_Inter]
	)
Select * From hashData
