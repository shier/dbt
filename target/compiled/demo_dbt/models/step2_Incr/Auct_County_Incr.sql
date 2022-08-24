
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([StateAbbreviation], [County])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_County_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_County_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
