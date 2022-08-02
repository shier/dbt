
With hashData as (
		Select
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[AH_AuctionEvents_Inter]
	)
Select * From hashData

	where not exists 
	(
		select ID 
		from "DedicatedSQLpoolBJ"."stg"."AH_AuctionEvents_Incr" compareData
		where hashData.ID=compareData.ID
	)
	or  exists 
	(
		Select ID, UpdatedOn
		from "DedicatedSQLpoolBJ"."stg"."AH_AuctionEvents_Incr" compareData
		where hashData.ID = compareData.ID and hashData.UpdatedOn <> compareData.UpdatedOn
	)
