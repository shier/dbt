
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ConsignmentID] as varchar), Cast([TargetTime] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_TimedLot_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_TimedLot_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
