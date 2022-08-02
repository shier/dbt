
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ReportID] as varchar), Cast([UserID] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportRestricted_Inter]
	)
Select * From hashData
