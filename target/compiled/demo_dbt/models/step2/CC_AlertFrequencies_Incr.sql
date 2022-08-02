
With hashData as (
		Select
			HASHBYTES('MD5', Description) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_AlertFrequencies_Inter]
	)
Select * From hashData

	where not exists 
	(
		select ID 
		from "DedicatedSQLpoolBJ"."stg"."CC_AlertFrequencies_Incr" compareData
		where hashData.ID=compareData.ID
	)
	or  exists 
	(
		Select ID, hashValue
		from "DedicatedSQLpoolBJ"."stg"."CC_AlertFrequencies_Incr" compareData
		where hashData.ID = compareData.ID and hashData.hashValue <> compareData.hashValue
	)
