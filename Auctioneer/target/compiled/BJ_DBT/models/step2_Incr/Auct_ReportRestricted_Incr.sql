
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ReportID] as varchar), Cast([UserID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportRestricted_InterView]
	)
Select * From hashData

	where not exists 
	(
		select hashValue 
		from "BJAC_DW_PROD"."stg"."Auct_ReportRestricted_Incr" compareData
		where hashData.hashValue=compareData.hashValue
	)
