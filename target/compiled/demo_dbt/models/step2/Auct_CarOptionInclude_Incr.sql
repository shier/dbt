
With hashData as (
		Select
			HASHBYTES('MD5', concat(Cast(Created as varchar), Cast(SourceCarOptionID as varchar), Cast(TargetCarOptionID as varchar), Cast(UpdateEventID as varchar), Include)) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_CarOptionInclude_Inter]
	)
Select * From hashData
