
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([Count] as varchar), [SKU])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Mer_InventoryLevels_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Mer_InventoryLevels_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
