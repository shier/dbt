
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat([Name], Cast([Principal_ID] as varchar), Cast([Diagram_ID] as varchar), Cast([Version] as varchar), Cast([Definition] as varchar))) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_SysDiagrams_Inter]
	)
Select * From hashData
