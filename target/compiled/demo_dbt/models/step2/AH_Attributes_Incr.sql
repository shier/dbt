
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_Attributes_Inter]
	)
Select * From hashData

	where not exists 
	(
		select ID 
		from "DedicatedSQLpoolBJ"."stg"."AH_Attributes_Incr" compareData
		where hashData.ID=compareData.ID
	)
	or  exists 
	(
		Select ID, UpdatedOn
		from "DedicatedSQLpoolBJ"."stg"."AH_Attributes_Incr" compareData
		where hashData.ID = compareData.ID and hashData.UpdatedOn <> compareData.UpdatedOn
	)
