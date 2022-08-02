
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(UpdateEventID as varchar), Cast(DisplayOrder as varchar), Cast(WebActive as varchar), Cast(Created as varchar), SourceName, Active)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_Sources_Inter]
	)
Select * From hashData
