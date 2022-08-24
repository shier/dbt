
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([UnitPrice] as varchar), [No_], [No_2], [Description], [Description2], [BaseUnitofMeasure], [ItemCategoryCode])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_TempProducts_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Mer_TempProducts_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
