
With hashData as (
		Select
			HASHBYTES('MD5', concat(QueryString, Login, Cast(Created as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportLogging_Inter]
	)
Select * From hashData
