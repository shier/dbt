
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast([NoteCategoryID] as varchar), Cast([Created] as varchar), [Text], [UserName])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Notes_Inter]
	)
Select * From hashData

	where not exists 
	(
		select NoteID 
		from "DedicatedSQLpoolBJ"."stg"."Auct_Notes_Incr" compareData
		where hashData.NoteID=compareData.NoteID
	)
	or  exists 
	(
		Select NoteID, hashValue
		from "DedicatedSQLpoolBJ"."stg"."Auct_Notes_Incr" compareData
		where hashData.NoteID = compareData.NoteID and hashData.hashValue <> compareData.hashValue
	)
