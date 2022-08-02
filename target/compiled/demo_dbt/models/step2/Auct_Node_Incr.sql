
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast([NodeTreeID] as varchar), Cast([Left] as varchar), Cast([Right] as varchar), Cast([ContentID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Node_Inter]
	)
Select * From hashData

	where not exists 
	(
		select NodeID 
		from "DedicatedSQLpoolBJ"."stg"."Auct_Node_Incr" compareData
		where hashData.NodeID=compareData.NodeID
	)
	or  exists 
	(
		Select NodeID, hashValue
		from "DedicatedSQLpoolBJ"."stg"."Auct_Node_Incr" compareData
		where hashData.NodeID = compareData.NodeID and hashData.hashValue <> compareData.hashValue
	)
