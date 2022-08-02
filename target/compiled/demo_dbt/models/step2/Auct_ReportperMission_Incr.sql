
With hashData as (
		Select
			HASHBYTES('SHA2_256', concat(Cast([ReportID] as varchar), [PerMission])) as hashValue,
			CURRENT_TIMESTAMP as effectiveTime, *
		From stg.[Auct_ReportperMission_Inter]
	)
Select * From hashData
