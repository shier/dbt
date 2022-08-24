
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([TrackingDefinition], [DataTokenID], Cast([StartDateUTC] as varchar), Cast([EndDateUTC] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[CC_UseradTrackingDefinition_InterView]
	)
Select * From hashData
