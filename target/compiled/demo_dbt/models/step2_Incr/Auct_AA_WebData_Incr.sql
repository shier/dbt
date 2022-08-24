
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([CarInfoID] as varchar), [Horsepower], Cast([OriginalHorsepower] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_AA_WebData_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "DedicatedSQLpoolBJ"."stg"."Auct_AA_WebData_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
